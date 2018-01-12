package com.springboot.ybt.system.controller;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.ybt.annotation.SystemControllerLog;
import com.springboot.ybt.shiro.ShiroService;

/**
 * shiro权限控制登录Controller
 * 
 * @author 作者: liuc
 * @date 创建时间：2017年12月06日 下午1:32:02
 */
@Controller
public class LoginController {
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	ShiroService shiroService;

	// 首页
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// 登录
	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}

	// 权限测试用
	@RequestMapping(value = "add")
	public String add() {
		return "add";
	}

	// 更新权限
	@RequestMapping(value = "updatePermission")
	@ResponseBody
	public String updatePermission() {
		shiroService.updatePermission();
		return "true";
	}

	// 踢出用户
	@RequestMapping(value = "kickouting")
	@ResponseBody
	public String kickouting() {

		return "kickout";
	}

	// 被踢出后跳转的页面
	@RequestMapping(value = "kickout")
	public ModelAndView kickout() {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("kickout", "1");
		return modelAndView;
	}

	/**
	 * ajax登录请求
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "ajaxLogin", method = RequestMethod.POST)
	@ResponseBody
	@SystemControllerLog(description = "登录")
	public Map<String, Object> submitLogin(HttpServletRequest request, String username, String password, String vcode,
			Boolean rememberMe, Model model) {
		Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
		HttpSession httpSession = request.getSession();
		if (vcode == null || vcode == "") {
			resultMap.put("status", 500);
			resultMap.put("message", "验证码不能为空！");
			return resultMap;
		}
		// 获取HttpSession中的验证码
		String imageCode = (String) httpSession.getAttribute("imageCode");
		if (!vcode.equalsIgnoreCase(imageCode)) {
			resultMap.put("status", 500);
			resultMap.put("message", "验证码错误！");
			return resultMap;
		}
		logger.info("准备登陆用户 => {}", username);
		UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
		// 获取当前的Subject
		Subject currentUser = SecurityUtils.getSubject();
		try {
			// 在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
			// 每个Realm都能在必要时对提交的AuthenticationTokens作出反应
			// 所以这一步在调用login(token)方法时,它会走到MyShiroRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
			logger.info("对用户[" + username + "]进行登录验证..验证开始");
			currentUser.login(token);
			logger.info("对用户[" + username + "]进行登录验证..验证通过");
		} catch (UnknownAccountException uae) {// 若没有指定的账户, 则 shiro 将会抛出
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,未知账户");
			uae.printStackTrace();
			resultMap.put("status", 500);
			resultMap.put("message", "用户不存在!");
		} catch (IncorrectCredentialsException ice) { // 若账户存在, 但密码不匹配, 则 shiro
														// 会抛出
														// IncorrectCredentialsException
														// 异常。
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");
			ice.printStackTrace();
			resultMap.put("status", 500);
			resultMap.put("message", "密码错误!");
		} catch (LockedAccountException lae) {// 用户被锁定的异常 LockedAccountException
			lae.printStackTrace();
			resultMap.put("status", 500);
			resultMap.put("message", "账户被锁定!");
		} catch (ExcessiveAttemptsException eae) {
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,用户名或密码错误次数大于5次,账户已锁定");
			eae.printStackTrace();
			resultMap.put("status", 500);
			resultMap.put("message", "用户名或密码错误次数大于5次,账户已锁定!");
		} catch (DisabledAccountException sae) {
			logger.info("对用户[" + username + "]进行登录验证..验证未通过,帐号已经禁止登录");
			resultMap.put("status", 500);
			resultMap.put("message", "帐号已经禁止登录!");
		} catch (AuthenticationException e) {// 所有认证时异常的父类.
			e.printStackTrace();
			resultMap.put("status", 500);
			resultMap.put("message", "认证错误!");
		} catch (Exception e) {
			resultMap.put("status", 500);
			resultMap.put("message", e.getMessage());
		}
		// 验证是否登录成功
		if (currentUser.isAuthenticated()) {
			logger.info("用户[" + username + "]登录认证通过(这里可以进行一些认证通过后的一些系统参数初始化操作)");
			resultMap.put("status", 200);
			resultMap.put("message", "登录成功");
		}
		return resultMap;
	}

	/**
	 * 退出
	 * 
	 * @return
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> logout() {
		Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
		try {
			// 退出
			SecurityUtils.getSubject().logout();
			resultMap.put("result", "success");
			logger.info("用户已安全退出");
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return resultMap;
	}

}

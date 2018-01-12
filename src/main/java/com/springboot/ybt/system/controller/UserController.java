package com.springboot.ybt.system.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.entity.UserOnlineBo;
import com.springboot.ybt.system.service.SysUserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author liuc
 * @since 2017-12-11
 */
@Api(value = "用户controller", tags = { "用户操作接口" })
@Controller
@RequestMapping(value = "user")
public class UserController {
	private static Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	SysUserService sysUserService;

	@ApiOperation(hidden = true, value = "跳转到用户列表页面")
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String userList() {
		logger.info("跳转到用户列表页面");
		return "system/user/userList";
	}

	@RequestMapping(value = "turnToAddUser", method = RequestMethod.GET)
	public String turnToAddUser() {
		logger.info("跳转到新增用户页面");
		return "system/user/addUser";
	}

	@ApiOperation(value = "获取用户列表", notes = "获取用户列表")
	@RequestMapping(value = "getUserList", method = RequestMethod.GET)
	@ResponseBody
	@Cacheable(value = "user-cache") // 设置缓存的名称,也可以通过key属性指定缓存的key,keyGenerator指定key生成策略器（keyGenerator一般推荐在重写CachingConfigurerSupport类里面的方法适合全局指定）
	public PageInfo<SysUser> getTopUserinfoList(String rows, String page, SysUser sysUser, HttpServletRequest request) {
		logger.info("获得用户信息列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");// 来获得排序方式
		logger.info("排序的列名:" + sidx);
		logger.info("排序方式:" + sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysUser", sysUser);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysUser> searchTopUserinfo = sysUserService.getUserList(map);
		return searchTopUserinfo;

	}

	// 跳转到在线用户管理页面
	@RequestMapping(value = "onlineUserPage")
	public String onlineUserPage() {
		return "system/user/onlineUser";
	}

	// 在线用户列表json
	@ApiOperation(value = "获取在线用户列表", notes = "获取在线用户列表")
	@RequestMapping(value = "onlineUsers")
	@ResponseBody
	public PageInfo<UserOnlineBo> getTopUserinfoList() {
		logger.info("获得在线用户信息列表!");
		PageInfo<UserOnlineBo> pageList = sysUserService.getOnlineUserList();
		return pageList;
	}

	// 强制踢出用户
	@RequestMapping(value = "kickout")
	public @ResponseBody Map<String, Object> delete(@RequestBody JSONObject json, HttpServletRequest request) {
		logger.info("强制踢出用户");
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		String ids = json.getString("ids");
		if (ids != null) {
			String[] items = ids.split(",");
			try {
				for (String sessionId : items) {
					sysUserService.kickout(sessionId);
				}
				jsonMap.put("flag", true);
				jsonMap.put("msg", "强制踢出成功！");
			} catch (Exception e) {
				jsonMap.put("flag", false);
				jsonMap.put("msg", e.getMessage());
			}
		}
		return jsonMap;

	}
}

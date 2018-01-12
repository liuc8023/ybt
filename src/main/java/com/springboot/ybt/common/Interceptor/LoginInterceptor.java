package com.springboot.ybt.common.Interceptor;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;


public class LoginInterceptor implements HandlerInterceptor{
	private final Logger logger = Logger.getLogger(LoginInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession(); 
		if(subject.isAuthenticated()){
			return true;
		}else{
			Map<String, String> resultMap = new HashMap<String, String>();
			resultMap.put("sessionstatus", "timeout");
			resultMap.put("message", "11！");
			//输出json串
			out(response, resultMap);
			return false;
		}
		
		
	}

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        logger.info("---postHandle---");
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        logger.info("---afterCompletion---");
    }
    
    private void out(ServletResponse hresponse, Map<String, String> resultMap)
			throws IOException {
		try {
			hresponse.setCharacterEncoding("UTF-8");
			PrintWriter out = hresponse.getWriter();
			out.println(JSON.toJSONString(resultMap));
			out.flush();
			out.close();
		} catch (Exception e) {
			System.err.println("KickoutSessionFilter.class 输出JSON异常，可以忽略。");
		}
	}
	 /**
		 * 判断一个方法是否需要登录
		 * @param method
		 * @return
		 */
//		private boolean isLoginRequired(Method method){
//			/*if(!env.equals("prod")){ //只有生产环境才需要登录
//				return false;
//			}*/
//			
//			boolean result = true;
//			if(method.isAnnotationPresent(SystemPermission.class)){
//				result = method.getAnnotation(SystemPermission.class).loginReqired();
//			}
//			
//			return result;
//		}
		
		//判断是否已经登录
//		private boolean isLogin(HttpServletRequest request) {
//			return true;
//			String token = XWebUtils.getCookieByName(request, WebConstants.CookieName.AdminToken);
//			if("1".equals(redisOperator.get(RedisConstants.Prefix.ADMIN_TOKEN+token))){
//				return true;
//			}else {
//				return false;
//			}
//		}

}

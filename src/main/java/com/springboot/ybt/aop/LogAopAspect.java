package com.springboot.ybt.aop;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import com.springboot.ybt.annotation.SystemControllerLog;
import com.springboot.ybt.annotation.SystemServiceLog;
import com.springboot.ybt.system.entity.SysLog;
import com.springboot.ybt.system.service.SysLogService;
import com.springboot.ybt.util.DateUtil;
import com.springboot.ybt.util.IpUtil;

/**
 * 记录用户操作日志和操作异常日志
 * @author liuc
 *
 */

@Aspect
@Component
public class LogAopAspect {
	private final Logger logger = LoggerFactory.getLogger(LogAopAspect.class);

    @Autowired
    private SysLogService logService;
	
	ThreadLocal<Long> time = new ThreadLocal<Long>();
	ThreadLocal<String> tag = new ThreadLocal<String>();

	// Service层切点
	@Pointcut("@annotation(com.springboot.ybt.annotation.SystemServiceLog)")
	public void serviceAspect() {
	}

	// Controller层切点
	@Pointcut("@annotation(com.springboot.ybt.annotation.SystemControllerLog)")
	public void controllerAspect() {
	}

    /**
     * 记录操作异常日志
     */
	@SuppressWarnings({ "rawtypes", "unused" })
	@AfterThrowing(pointcut = "controllerAspect()", throwing = "ex")
	public void afterThrow(JoinPoint joinPoint, Exception ex) {
		RequestAttributes ra = RequestContextHolder.getRequestAttributes();
	    ServletRequestAttributes sra = (ServletRequestAttributes) ra;
	    HttpServletRequest request = sra.getRequest();
		try {
			logger.info("afterThrow 抛出异常后开始");
			time.set(System.currentTimeMillis());
			// 拦截的方法参数
			Object[] args = joinPoint.getArgs();
			// 拦截的放参数类型
			Class[] parameterTypes = ((MethodSignature) joinPoint.getSignature())
					.getMethod().getParameterTypes();
			// 需要转换成Json的HashMap
			Map<String, Object> maps = new HashMap<String, Object>();
			Map<String, Object> parammaps = new HashMap<String, Object>();

			// 获取签名
			MethodSignature signature = (MethodSignature) joinPoint
					.getSignature();
			String methodName = signature.getName();
			// 请求的IP
			String ip = IpUtil.getIpAddr(request);
			// 获取当前用户
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			PrincipalCollection principalCollection = (PrincipalCollection) session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
			String username = (String) principalCollection.getPrimaryPrincipal();
			
			String exceptionCode = ex.getClass().getName();// 异常类型代码' X+ B! k M0
															// L) d
			logger.info("exceptionCode:" + exceptionCode);
			// 循环获得所有参数对象
			for (int i = 0; i < args.length; i++) {
				if (null != args[i]) {
					parammaps.put("args[" + i + "]", args[i]);
				} else {
					parammaps.put("args[" + i + "]", "空参数");
				}
			}
			logger.info("=====抛出异常后通知开始=====");
			logger.info("请求方法:" + methodName);
			logger.info("方法描述:" + getControllerMethodDescription(joinPoint));
			logger.info("请求人:" + username);
			logger.info("请求IP:" + ip);
			logger.info("执行时间:" + "运行消耗"
					+ (System.currentTimeMillis() - time.get()) + "ms");
			SysLog log = new SysLog();
			log.setId(UUID.randomUUID().toString());
			log.setDescription(getControllerMethodDescription(joinPoint));
			log.setMethod((joinPoint.getTarget().getClass().getName() + "."
					+ joinPoint.getSignature().getName() + "()"));
			log.setType("1");// 0-正常，1-异常
			log.setRequestip(ip);
			log.setExceptioncode(exceptionCode);
			log.setParams(null);
			log.setOperator(username);
			log.setExecutetime("运行消耗"
					+ (System.currentTimeMillis() - time.get()) + "ms");
			log.setCreateDateTime(DateUtil.getDateTime());
			// 保存数据库
			logService.insert(log);
		} catch (Exception e) {
			// 记录本地异常日志
			logger.error("==抛出异常后异常==");
			e.printStackTrace();
		}
		logger.info("afterThrow 抛出异常后结束");
	}
	
	/**
     * 记录操作日志
     */
	@Around("serviceAspect()")
	public Object aroundExec(ProceedingJoinPoint pjp) throws Throwable {
		Object obj = pjp.proceed();
		RequestAttributes ra = RequestContextHolder.getRequestAttributes();
	    ServletRequestAttributes sra = (ServletRequestAttributes) ra;
	    HttpServletRequest request = sra.getRequest();
		try {
			logger.info("Service层 aop 环绕开始");
			time.set(System.currentTimeMillis());
			SysLog log = new SysLog();
			// 请求的IP
			String ip = IpUtil.getIpAddr(request);
			// 获取当前用户
			Subject subject = SecurityUtils.getSubject();
			Session session = subject.getSession();
			PrincipalCollection principalCollection = (PrincipalCollection) session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
			String username = (String) principalCollection.getPrimaryPrincipal();
			// 获取签名
			MethodSignature signature = (MethodSignature) pjp.getSignature();
			String methodName = signature.getName();
			String className = pjp.getThis().getClass().getName();
			className = className.substring(0, className.indexOf("$$")); // 截取掉cglib代理类标志
			logger.info("methodName:" + methodName + ",className:" + className);
			logger.info("=====前置通知开始=====");
			logger.info("请求方法:" + methodName);
			logger.info("方法描述:" + getServiceMthodDescription(pjp));
			logger.info("请求人:" + username);
			logger.info("请求IP:" + ip);
			logger.info("执行时间:" + "运行消耗"
					+ (System.currentTimeMillis() - time.get()) + "ms");
			
			// *========数据库日志=========*//
			log.setId(UUID.randomUUID().toString());
			log.setDescription(getServiceMthodDescription(pjp));
			log.setMethod((pjp.getTarget().getClass().getName() + "."
					+ pjp.getSignature().getName() + "()"));
			log.setType("0");// 0-正常，1-异常
			log.setRequestip(ip);
			log.setExceptioncode(null);
			log.setParams(null);
			log.setOperator(username);
			log.setExecutetime("运行消耗"
					+ (System.currentTimeMillis() - time.get()) + "ms");
			log.setCreateDateTime(DateUtil.getDateTime());
			// 保存数据库
			logService.insert(log);
		} catch (Exception e) {
			// 记录本地异常日志
			logger.error("==环绕通知异常==");
			e.printStackTrace();
		}
		logger.info("Service层aop 环绕结束");
		return obj;
	}
	

	/**
	 * 获取注解中对方法的描述信息 用于service层注解
	 * 
	 * @param joinPoint
	 *            切点
	 * @return 方法描述
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public static String getServiceMthodDescription(JoinPoint joinPoint)
			throws Exception {
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();
		Class<?> targetClass = Class.forName(targetName);
		Method[] methods = targetClass.getMethods();
		String description = "";
		for (Method method : methods) {
			if (method.getName().equals(methodName)) {
				Class[] clazzs = method.getParameterTypes();
				if (clazzs.length == arguments.length) {
					description = method.getAnnotation(SystemServiceLog.class)
							.description();
					break;
				}
			}
		}
		return description;
	}

	/**
	 * 获取注解中对方法的描述信息 用于Controller层注解
	 * 
	 * @param joinPoint
	 *            切点
	 * @return 方法描述
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public static String getControllerMethodDescription(JoinPoint joinPoint)
			throws Exception {
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();
		Class<?> targetClass = Class.forName(targetName);
		Method[] methods = targetClass.getMethods();
		String description = "";
		for (Method method : methods) {
			if (method.getName().equals(methodName)) {
				Class[] clazzs = method.getParameterTypes();
				if (clazzs.length == arguments.length) {
					description = method.getAnnotation(
							SystemControllerLog.class).description();
					break;
				}
			}
		}
		return description;
	}
    
}

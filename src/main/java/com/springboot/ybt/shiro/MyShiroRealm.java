package com.springboot.ybt.shiro;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.annotation.PostConstruct;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.service.SysUserService;

/**
 * shiro身份校验核心类
 * 
 * @author 作者: liuc
 * @date 创建时间：2017年12月10日 下午3:19:48
 */

public class MyShiroRealm extends AuthorizingRealm {
	private static Logger logger = LoggerFactory.getLogger(MyShiroRealm.class);
	@Autowired
	private SysUserService sysUserService;
	
	
	@Autowired
	StringRedisTemplate stringRedisTemplate;
	
	//用户登录次数计数  redisKey 前缀
	private String SHIRO_LOGIN_COUNT = "shiro_login_count_";
	
	//用户登录是否被锁定    一小时 redisKey 前缀
	private String SHIRO_IS_LOCK = "shiro_is_lock_";

	/**
	 * 认证信息.(身份验证) : Authentication 是用来验证用户身份
	 * 
	 * @param token
	 * @return
	 * @throws AuthenticationException
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		String name = token.getUsername();
		//访问一次，计数一次
		ValueOperations<String, String> opsForValue = stringRedisTemplate.opsForValue();
		opsForValue.increment(SHIRO_LOGIN_COUNT+name, 1);
		//计数大于5时，设置用户被锁定一小时
		if(Integer.parseInt(opsForValue.get(SHIRO_LOGIN_COUNT+name))>=5){
			opsForValue.set(SHIRO_IS_LOCK+name, "LOCK");//向redis里存入数据
//			stringRedisTemplate.expire(SHIRO_IS_LOCK+name, 1, TimeUnit.HOURS);//设置过期时间,过期时间是1小时
			stringRedisTemplate.expire(SHIRO_IS_LOCK+name, 3, TimeUnit.MINUTES);//设置过期时间,过期时间是3分钟
		}
		if ("LOCK".equals(opsForValue.get(SHIRO_IS_LOCK+name))){
			//由于密码输入错误次数大于5次，帐号已经禁止登录！
			throw new ExcessiveAttemptsException();
		}
		SysUser user = null;
		// 从数据库获取对应用户名密码的用户
		user = sysUserService.selectUserByNickName(name);
		
		if (user == null) {
			// 抛出 帐号找不到异常
			throw new UnknownAccountException();
		}
		// 判断帐号是否锁定
		else  if ("0".equals(user.getStatus())) {
			 // 抛出 帐号锁定异常
			 throw new LockedAccountException();
		 }else if(user !=null){
				//登录成功
				//更新登录时间 last login time
//				user.setLastLoginTime(new Date());
				sysUserService.updateUserById(user);
				//清空登录计数
				opsForValue.set(SHIRO_LOGIN_COUNT+name, "0");
			}
			logger.info("身份认证成功，登录用户："+name);
			//得到加密密码的盐值
	       ByteSource salt = ByteSource.Util.bytes(user.getCredentialsSalt());
		// 交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配
		SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
				user.getNickname(), // 用户名
				user.getPswd(),// 密码
				salt,// //加密的盐值salt=nickname+salt
				getName() // realm name
		);
		 // 当验证都通过后，把用户信息放在session里
        Session session = SecurityUtils.getSubject().getSession();
        session.setAttribute("userSession", user);
        session.setAttribute("userSessionId", user.getId());
		return authenticationInfo;
	}

	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		logger.info("权限认证方法：MyShiroRealm.doGetAuthorizationInfo()");
//		SysUser user = (SysUser)SecurityUtils.getSubject().getPrincipal();
//		String userId = user.getId();
		SimpleAuthorizationInfo info =  new SimpleAuthorizationInfo();
		//根据用户ID查询角色（role），放入到Authorization里。
		/*Map<String, Object> map = new HashMap<String, Object>();
		map.put("user_id", userId);
		List<SysRole> roleList = sysRoleService.selectByMap(map);
		Set<String> roleSet = new HashSet<String>();
		for(SysRole role : roleList){
			roleSet.add(role.getType());
		}*/
		Set<String> roleSet = new HashSet<String>();
		roleSet.add("100002");
		info.setRoles(roleSet);
		//根据用户ID查询权限（permission），放入到Authorization里。
		/*List<SysPermission> permissionList = sysPermissionService.selectByMap(map);
		Set<String> permissionSet = new HashSet<String>();
		for(SysPermission Permission : permissionList){
			permissionSet.add(Permission.getName());
		}*/
		Set<String> permissionSet = new HashSet<String>();
		permissionSet.add("权限添加");
		permissionSet.add("权限删除");
		info.setStringPermissions(permissionSet);
        return info;
	}
	
	  @PostConstruct
	    public void initCredentialsMatcher() {
	        //该句作用是重写shiro的密码验证，让shiro用我自己的验证
	        setCredentialsMatcher(new CredentialsMatcher());
	 
	    }
}

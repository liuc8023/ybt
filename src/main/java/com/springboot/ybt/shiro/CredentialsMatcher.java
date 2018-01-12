package com.springboot.ybt.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.springboot.ybt.system.entity.SysUser;

/**
 * 自定义 密码验证类
 * 
 * @author liuc
 * 
 */
public class CredentialsMatcher extends SimpleCredentialsMatcher {
	 
    private final static Logger logger = LoggerFactory.getLogger(CredentialsMatcher.class);
 
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
    	logger.info("进行自定义密码校验器校验密码");
        Subject subject = SecurityUtils.getSubject();  
        Session session = subject.getSession();
        //获得用户输入的密码:(可以采用加盐(salt)的方式去检验)
        SysUser user = (SysUser) session.getAttribute("userSession");
        String inPassword = user.getPswd();
        //获得数据库中的密码
        String dbPassword=(String) info.getCredentials();
        //进行密码的比对
        return this.equals(inPassword, dbPassword);
    }
}

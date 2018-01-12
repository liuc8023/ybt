package com.springboot.ybt.util;

import com.springboot.ybt.system.entity.SysUser;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Value;

/**
 * User： liuc 
 * Date： 2017/6/17 Time： 16:49 
 * 备注： shiro进行加密解密的工具类封装
 */
public final class EndecryptUtils {
	private String algorithmName = "md5";
	@Value("${spring.shiro.md5.hashIterations}")
	private int hashIterations;

	public void encryptPassword(SysUser user) {
		// 随机生成盐salt
		SecureRandomNumberGenerator secureRandomNumberGenerator = new SecureRandomNumberGenerator();
		String salt = secureRandomNumberGenerator.nextBytes().toHex();
		String newPassword = new SimpleHash(algorithmName, user.getPswd(),
				ByteSource.Util.bytes(user.getNickname() + salt), hashIterations).toHex();
		user.setPswd(newPassword);
		user.setSalt(salt);

	}

	public static void main(String[] args) {
		EndecryptUtils passwordHelper = new EndecryptUtils();
		SysUser user = new SysUser();
		user.setNickname("admin");
		user.setPswd("123456");
		passwordHelper.encryptPassword(user);
		System.out.println(user);
	}
}

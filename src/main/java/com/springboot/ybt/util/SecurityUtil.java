package com.springboot.ybt.util;


import org.apache.shiro.SecurityUtils;
import com.springboot.ybt.system.entity.SysUser;


/**
 * Created by liuc on 2018/01/05.
 * 
 */
public class SecurityUtil {

    public static String getUserId(){
       return SecurityUtils.getSubject().getPrincipal().toString();
    }

    public static SysUser getUser(){
        return (SysUser)SecurityUtils.getSubject().getSession().getAttribute("userSession");
    }
}

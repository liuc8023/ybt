package com.springboot.ybt.constant;

/**
 * Created by liuc on 2018/01/11
 */
public class RedisConstant {
    /**
     * shiro-redis的session对象前缀
     */
    public static final String SHIRO_REDIS_SESSION_PRE = "shiro_session:";

    /**
     * 存放uid的对象前缀
     */
    public static final String SHIRO_SESSION_PRE = "shiro_sessionid:";

    /**
     * 存放uid当前状态状态的前缀 uid
     */
    public static final String UID_PRE = "uid:";

    /**
     * 存放用户信息uid
     */
    public static final String USER_PRE="user:";

    /**
     * 存放用户权限的前缀
     */
    public static final String PERMISSION_PRE = "permission:";

    /**
     * 角色中的权限
     */
    public static final String ROLE_PRE = "role:";
    /**
     * 字典缓存前缀
     */
    public static final String DICT_PRE = "dict:";

    /**
     * 组织机构缓存前缀
     */
    public static final String ORG_PRE="org:";
    /**
     * 消息缓存前缀
     */
    public static final String MESSAGE_PRE = "message:";

    /**
     * 组装key
     * @param pre 前缀
     * @param after 后缀
     * @return key
     */
    public static final String getKey(String pre,String after){
        return pre+after;
    }
}

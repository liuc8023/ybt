package com.springboot.ybt.system.service;

import java.io.Serializable;
import java.util.Map;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.entity.UserOnlineBo;

public interface SysUserService extends IService<SysUser> {

	SysUser selectUserByNickName(String name);

	void updateUserById(SysUser user);

	PageInfo<SysUser> getUserList(Map<String, Object> map);

	PageInfo<UserOnlineBo> getOnlineUserList();

	void kickout(Serializable sessionId);

}

package com.springboot.ybt.system.dao;

import java.util.List;
import java.util.Map;

import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.util.MyMapper;

public interface SysUserMapper extends MyMapper<SysUser> {

	SysUser selectUserByNickName(String nickName);

	void updateUserById(SysUser user);

	List<SysUser> getUserList(SysUser sysUser);

	List<?> getUserNamesByUserIds(Map<String, Object> params);
}
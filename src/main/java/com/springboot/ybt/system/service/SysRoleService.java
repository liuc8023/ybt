package com.springboot.ybt.system.service;

import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysRole;

public interface SysRoleService extends IService<SysRole> {

	PageInfo<SysRole> getRoleList(Map<String, Object> map);

}

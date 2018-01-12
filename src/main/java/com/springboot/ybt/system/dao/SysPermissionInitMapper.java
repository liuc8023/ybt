package com.springboot.ybt.system.dao;

import java.util.List;

import com.springboot.ybt.system.entity.SysPermissionInit;
import com.springboot.ybt.util.MyMapper;

public interface SysPermissionInitMapper extends MyMapper<SysPermissionInit> {

	List<SysPermissionInit> getAll();
}
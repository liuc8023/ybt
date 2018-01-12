package com.springboot.ybt.system.service;

import java.util.List;

import com.springboot.ybt.system.entity.SysPermissionInit;

public interface SysPermissionInitService extends IService<SysPermissionInit>{
	List<SysPermissionInit> getAll();
}

package com.springboot.ybt.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.ybt.annotation.ReadDataSource;
import com.springboot.ybt.system.dao.SysPermissionInitMapper;
import com.springboot.ybt.system.entity.SysPermissionInit;
import com.springboot.ybt.system.service.SysPermissionInitService;

/**
 * 服务实现类
 * @author liuc
 *
 */
@Service
public class SysPermissionInitServiceImpl extends BaseService<SysPermissionInit> implements SysPermissionInitService {
	@Autowired
	private SysPermissionInitMapper mapper;
	
	@ReadDataSource
	public List<SysPermissionInit> getAll() {
		return mapper.getAll();
	}
}

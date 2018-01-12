package com.springboot.ybt.system.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.annotation.ReadDataSource;
import com.springboot.ybt.system.dao.SysRoleMapper;
import com.springboot.ybt.system.entity.SysRole;
import com.springboot.ybt.system.service.SysRoleService;
@Service
public class SysRoleServiceImpl extends BaseService<SysRole> implements SysRoleService{
	private static Logger logger = LoggerFactory.getLogger(SysRoleService.class);
	@Autowired
	private SysRoleMapper roleMapper;
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	public PageInfo<SysRole> getRoleList(Map<String, Object> map) {
		logger.info("获取角色管理信息列表的实现方法");
		PageInfo<SysRole> page = new PageInfo<SysRole>();
		SysRole sysRole = (SysRole) map.get("sysRole");
		int pageSize = Integer.parseInt(map.get("pageSize").toString());
		int pageNo = Integer.parseInt(map.get("pageNo").toString());
		String sidx = (String) map.get("sidx");
		String sord = (String) map.get("sord");
		PageHelper.startPage(pageNo, pageSize, true);//分页查询
		if(!"".equals(sidx) &&!"".equals(sord)){
			PageHelper.orderBy(sidx+" "+sord); //按字段排序
		}
		List<SysRole> list = roleMapper.select(sysRole);
		page = new PageInfo<SysRole>(list);
		return page;
	}

}

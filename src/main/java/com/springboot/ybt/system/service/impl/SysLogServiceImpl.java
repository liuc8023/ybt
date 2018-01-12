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
import com.springboot.ybt.annotation.WriteDataSource;
import com.springboot.ybt.system.dao.SysLogMapper;
import com.springboot.ybt.system.entity.SysLog;
import com.springboot.ybt.system.service.SysLogService;
import com.springboot.ybt.system.service.SysMenuService;

@Service
public class SysLogServiceImpl  extends BaseService<SysLog> implements SysLogService {
	private static Logger logger = LoggerFactory.getLogger(SysMenuService.class);
	@Autowired
	private SysLogMapper logMapper;
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@WriteDataSource
	public void insert(SysLog log) {
		logger.info("插入操作日志信息");
		logMapper.insert(log);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	public PageInfo<SysLog> getLogList(Map<String, Object> map) {
		PageInfo<SysLog> page = new PageInfo<SysLog>();
		int pageSize = Integer.parseInt(map.get("pageSize").toString());
		int pageNo = Integer.parseInt(map.get("pageNo").toString());
		String sidx = (String) map.get("sidx");
		String sord = (String) map.get("sord");
		PageHelper.startPage(pageNo, pageSize, true);//分页查询
		if(!"".equals(sidx) &&!"".equals(sord)){
			PageHelper.orderBy(sidx+" "+sord); //按字段排序
		}
		List<SysLog> list = logMapper.getAll();
		page = new PageInfo<SysLog>(list);
		return page;
	}
}

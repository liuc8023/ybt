package com.springboot.ybt.system.service;

import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysLog;

public interface SysLogService extends IService<SysLog> {

	void insert(SysLog log);

	PageInfo<SysLog> getLogList(Map<String, Object> map);

}

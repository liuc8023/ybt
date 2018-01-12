package com.springboot.ybt.system.dao;

import java.util.List;

import com.springboot.ybt.system.entity.SysLog;
import com.springboot.ybt.util.MyMapper;

public interface SysLogMapper extends MyMapper<SysLog> {

	List<SysLog> getAll();
}
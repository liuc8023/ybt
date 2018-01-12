package com.springboot.ybt.system.dao;

import java.util.List;

import com.springboot.ybt.system.entity.SysDict;
import com.springboot.ybt.util.MyMapper;

public interface SysDictMapper extends MyMapper<SysDict> {
	List<SysDict> getAll();
}
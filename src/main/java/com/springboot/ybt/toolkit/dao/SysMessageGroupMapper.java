package com.springboot.ybt.toolkit.dao;

import java.util.List;

import com.springboot.ybt.toolkit.entity.SysMessageGroup;
import com.springboot.ybt.util.MyMapper;

public interface SysMessageGroupMapper extends MyMapper<SysMessageGroup> {

	List<SysMessageGroup> getMessageGroupByUserId(String userId);
}
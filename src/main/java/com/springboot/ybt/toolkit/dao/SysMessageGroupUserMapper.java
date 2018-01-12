package com.springboot.ybt.toolkit.dao;

import java.util.List;
import java.util.Map;

import com.springboot.ybt.toolkit.entity.SysMessageGroupUser;
import com.springboot.ybt.util.MyMapper;

public interface SysMessageGroupUserMapper extends MyMapper<SysMessageGroupUser> {

	List<SysMessageGroupUser> getUserByGroupId(String groupId);

	@SuppressWarnings("rawtypes")
	List<Map> selectUserIdByGroupIds(Map<String, Object> params);

	List<?> getUserNamesByGroupIds(Map<String, Object> params);
}
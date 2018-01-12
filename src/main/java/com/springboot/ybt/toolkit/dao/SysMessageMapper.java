package com.springboot.ybt.toolkit.dao;

import com.springboot.ybt.toolkit.entity.SysMessage;
import com.springboot.ybt.util.MyMapper;

public interface SysMessageMapper extends MyMapper<SysMessage> {

	Integer getMessageCount(String sendUserID);
}
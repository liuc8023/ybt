package com.springboot.ybt.system.dao;

import java.util.List;

import com.springboot.ybt.system.entity.SysMenu;
import com.springboot.ybt.util.MyMapper;

public interface SysMenuMapper extends MyMapper<SysMenu> {

	List<SysMenu> getAll();

	List<SysMenu> getMenuTree(String name);
}
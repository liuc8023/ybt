package com.springboot.ybt.system.service;

import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysMenu;

public interface SysMenuService extends IService<SysMenu> {

	List<SysMenu> getAll();

	PageInfo<SysMenu> getMenuList(Map<String, Object> map);

}

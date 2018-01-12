package com.springboot.ybt.system.service;

import java.util.Map;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysDict;

public interface SysDictService extends IService<SysDict> {

	PageInfo<SysDict> getDictList(Map<String, Object> map);


}

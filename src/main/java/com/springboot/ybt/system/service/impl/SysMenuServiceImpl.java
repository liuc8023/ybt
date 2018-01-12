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
import com.springboot.ybt.system.dao.SysMenuMapper;
import com.springboot.ybt.system.entity.SysMenu;
import com.springboot.ybt.system.service.SysMenuService;
/**
 * 服务实现类
 * @author liuc
 *
 */
@Service
public class SysMenuServiceImpl extends BaseService<SysMenu> implements SysMenuService {
	private static Logger logger = LoggerFactory.getLogger(SysMenuService.class);
	@Autowired
	private SysMenuMapper menuMapper;
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=false,rollbackFor=Exception.class)
	@ReadDataSource
	public List<SysMenu> getAll(){
		logger.info("从数据库中获取菜单");
		return this.menuMapper.getAll();
		
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	public PageInfo<SysMenu> getMenuList(Map<String, Object> map) {
		PageInfo<SysMenu> page = new PageInfo<SysMenu>();
		int pageSize = Integer.parseInt(map.get("pageSize").toString());
		int pageNo = Integer.parseInt(map.get("pageNo").toString());
		String sidx = (String) map.get("sidx");
		String sord = (String) map.get("sord");
		PageHelper.startPage(pageNo, pageSize, true);//分页查询
		if(!"".equals(sidx) &&!"".equals(sord)){
			PageHelper.orderBy(sidx+" "+sord); //按字段排序
		}
		List<SysMenu> list = menuMapper.getAll();
		page = new PageInfo<SysMenu>(list);
		return page;
	}

}

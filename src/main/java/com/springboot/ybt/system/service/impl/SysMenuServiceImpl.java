package com.springboot.ybt.system.service.impl;

import java.util.LinkedHashMap;
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
import com.springboot.ybt.annotation.SystemServiceLog;
import com.springboot.ybt.annotation.WriteDataSource;
import com.springboot.ybt.base.pojo.TreeNode;
import com.springboot.ybt.system.dao.SysMenuMapper;
import com.springboot.ybt.system.entity.SysMenu;
import com.springboot.ybt.system.service.SysMenuService;
import com.springboot.ybt.util.TreeUtil;
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

	@Override
	@ReadDataSource
	public List<SysMenu> getMenuTree(String q) {
		return menuMapper.getMenuTree(q);
	}

	@Override
	@ReadDataSource
	public List<TreeNode> getTreeData() {
		 List<SysMenu> funcs = menuMapper.getAll();
		 Map<String, TreeNode> nodelist = new LinkedHashMap<String, TreeNode>();
	        for (SysMenu func : funcs) {
	            TreeNode node = new TreeNode();
	            node.setText(func.getName());
	            node.setId(func.getId());
	            node.setParentId(func.getParentId());
	            node.setLevelCode(func.getLevelcode());
	            node.setIcon(func.getIcon());
	            nodelist.put(node.getId(), node);
	        }
	        // 构造树形结构
	        return TreeUtil.getNodeList(nodelist);
	}

	@Override
	@ReadDataSource
	public SysMenu getSysMenuById(String id) {
		return menuMapper.selectByPrimaryKey(id);
	}

	@Override
	@WriteDataSource
	@SystemServiceLog(description="新增菜单信息")
	public int insert(SysMenu sysMenu) {
		int i = menuMapper.insert(sysMenu);
		return i;
	}

	@Override
	@WriteDataSource
	@SystemServiceLog(description="根据id删除菜单信息")
	public int deleteSysMenuById(String id) {
		return menuMapper.deleteByPrimaryKey(id);
	}

}

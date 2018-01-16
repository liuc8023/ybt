package com.springboot.ybt.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.springboot.ybt.annotation.SystemControllerLog;
import com.springboot.ybt.base.pojo.TreeNode;
import com.springboot.ybt.system.entity.SysMenu;
import com.springboot.ybt.system.service.SysMenuService;
import com.springboot.ybt.util.DateUtil;
import com.springboot.ybt.util.StrUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

/**
 * <p>
 * 菜单控制器
 * </p>
 *
 * @author liuc
 * @since 2017-12-07
 */
@Controller
@RequestMapping(value = "menu")
@Api(value = "菜单controller", tags = { "菜单操作接口" })
public class MenuController {
	private static Logger logger = LoggerFactory.getLogger(MenuController.class);
	@Autowired
	SysMenuService sysMenuService;

	private String resultTree;// 我要返回给页面的List

	@ApiOperation(hidden = true, value = "跳转到menu管理页面")
	@RequestMapping(value = "list")
	public String turnToMenuList() {
		return "system/menu/menuList";
	}
	

	@ApiOperation(hidden = true, value = "跳转到menu新增页面")
	@RequestMapping(value = "turnToAddMenu")
	public String turnToAddMenu() {
		return "system/menu/addMenu";
	}

	@ApiOperation(value = "获取左侧导航树", notes = "获取左侧导航树",hidden = true)
	@RequestMapping(value = "/returnTree", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String getAll() {
		logger.info("获取菜单");
		List<SysMenu> list = sysMenuService.getAll();
		Gson gson = new Gson();
		String jsonString = gson.toJson(list);
		resultTree = jsonString;// 给result赋值，传递给页面
		logger.info("resultTree:" + resultTree);
		return resultTree;
	}
	
	@ApiOperation(value = "获取左侧导航树", notes = "获取左侧导航树",hidden = true)
	@RequestMapping(value = "/getMenuTree", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String getMenuTree(HttpServletRequest request) {
		logger.info("获取菜单");
		logger.info(request.getParameter("q"));
		String q = request.getParameter("q");
		List<SysMenu> list = sysMenuService.getMenuTree(q);
		Gson gson = new Gson();
		String jsonString = gson.toJson(list);
		resultTree = jsonString;// 给result赋值，传递给页面
		logger.info("resultTree:" + resultTree);
		return resultTree;
	}
	
	 /**
     * getTreeData 构造bootstrap-treeview格式数据
     *
     * @return
     */
    @RequestMapping(value = "/treeData", method = RequestMethod.POST)
    @ResponseBody
    public List<TreeNode> getTreeData() {
        return sysMenuService.getTreeData();
    }
    
    @RequestMapping(value = "getSysMenuById", method = RequestMethod.POST)
    @ResponseBody
    public SysMenu getSysMenuById(HttpServletRequest request) {
    	String id = request.getParameter("id");
    	SysMenu sysMenu = sysMenuService.getSysMenuById( id);
        if (!StrUtil.isEmpty(sysMenu.getParentId())) {
        	sysMenu.setParentName(sysMenuService.getSysMenuById(sysMenu.getParentId()).getName());
        } else {
        	sysMenu.setParentName("系统菜单");
        }
        return sysMenu;
    }

	@ApiOperation(value = "获得菜单信息列表", notes = "获得菜单信息列表")
	@RequestMapping(value = "getMenuList", method = RequestMethod.GET)
	@ResponseBody
	public PageInfo<SysMenu> getMenuList(String rows, String page, SysMenu sysMenu, HttpServletRequest request) {
		logger.info("获得菜单信息列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");// 来获得排序方式
		logger.info("排序的列名:" + sidx);
		logger.info("排序方式:" + sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysMenu", sysMenu);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysMenu> searchSysMenuInfo = sysMenuService.getMenuList(map);
		return searchSysMenuInfo;
	}
	
	@ApiOperation(value = "新增菜单信息", notes = "根据SysMenu对象创建菜单")
	@ApiImplicitParam(name = "sysMenu", value = "菜单详细实体sysMenu", required = true, dataType = "SysMenu")
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	@SystemControllerLog(description = "新增菜单信息")
	public @ResponseBody Map<String, Object> insert(@RequestBody JSONObject json, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("创建菜单信息");
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		SysMenu sysMenu = new SysMenu();
		sysMenu.setId(UUID.randomUUID().toString());
		sysMenu.setName(json.getString("name"));
		sysMenu.setFunctype(json.getString("functype"));
		sysMenu.setCode(json.getString("code"));
		sysMenu.setIcon(json.getString("icon"));
		sysMenu.setLevelcode(json.getString("levelcode"));
		sysMenu.setParentId(json.getString("parentId"));
		sysMenu.setUrl(json.getString("url"));
		sysMenu.setRemark(json.getString("remark"));
		sysMenu.setDeleted(Integer.parseInt(json.getString("deleted")));
		sysMenu.setCreateDateTime(DateUtil.getDateTime());
		sysMenu.setUpdateDateTime(DateUtil.getDateTime());
		int i = sysMenuService.insert(sysMenu);
		logger.info("i="+i);
		if(i>0){
			jsonMap.put("result", "success");// 新增用户信息成功
		}else{
			jsonMap.put("result", "fail");// 新增用户信息失败
		}
		return jsonMap;
	}
	
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> delete(HttpServletRequest request) {
    	Map<String, Object> jsonMap = new HashMap<String, Object>();
    	String id = request.getParameter("id");
    	int i = sysMenuService.deleteSysMenuById(id);
    	if(i>0){
			jsonMap.put("result", "success");// 删除用户信息成功
		}else{
			jsonMap.put("result", "fail");// 删除用户信息失败
		}
        return jsonMap;
    }

	public String getResultTree() {
		return resultTree;
	}

	public void setResultTree(String resultTree) {
		this.resultTree = resultTree;
	}
}

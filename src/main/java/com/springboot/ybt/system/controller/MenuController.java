package com.springboot.ybt.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.springboot.ybt.system.entity.SysMenu;
import com.springboot.ybt.system.service.SysMenuService;

import io.swagger.annotations.Api;
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

	public String getResultTree() {
		return resultTree;
	}

	public void setResultTree(String resultTree) {
		this.resultTree = resultTree;
	}
}

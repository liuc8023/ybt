package com.springboot.ybt.system.controller;

import java.util.HashMap;
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
import com.springboot.ybt.system.entity.SysRole;
import com.springboot.ybt.system.service.SysRoleService;

/**
 * 角色管理Controller
 * 
 * @author 作者: z77z
 * @date 创建时间：2017年3月8日 下午1:32:02
 */
@Controller
@RequestMapping(value="role")
public class RoleController{
	private static Logger logger = LoggerFactory.getLogger(RoleController.class);
	@Autowired
	SysRoleService sysRoleService;
	//跳转到role管理页面
	@RequestMapping(value="list")
	public String turnToRoleList() {
		return "system/role/roleList";
	}

	@RequestMapping(value = "getRoleList", method = RequestMethod.GET)
	@ResponseBody
	public PageInfo<SysRole> getRoleList(String rows, String page, SysRole sysRole,HttpServletRequest request) {
		logger.info("获得角色信息列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");//来获得排序方式
		logger.info("排序的列名:"+sidx);
		logger.info("排序方式:"+sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysRole", sysRole);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysRole> searchSysRoleInfo = sysRoleService.getRoleList(map);
		return searchSysRoleInfo;
	}
	
}

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
import com.springboot.ybt.system.entity.SysLog;
import com.springboot.ybt.system.service.SysLogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author liuc
 * @since 2017-12-29
 */
@Api(value="操作日志controller",tags={"日志操作接口"})
@Controller
@RequestMapping(value = "log")
public class LogController {
	private static Logger logger = LoggerFactory.getLogger(LogController.class);
	@Autowired
	SysLogService sysLogService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String userList() {
		logger.info("跳转到操作日志列表页面");
		return "system/log/logList";
	}
	
	@ApiOperation(value="获取用户列表", notes="获取用户列表")
	@RequestMapping(value = "getLogList", method = RequestMethod.GET)
	@ResponseBody
	public PageInfo<SysLog> getLogList(String rows, String page, SysLog sysLog,HttpServletRequest request) {
		logger.info("获得用户信息列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");//来获得排序方式
		logger.info("排序的列名:"+sidx);
		logger.info("排序方式:"+sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysLog", sysLog);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysLog> searchLoginfo = sysLogService.getLogList(map);
		return searchLoginfo;

	}

}

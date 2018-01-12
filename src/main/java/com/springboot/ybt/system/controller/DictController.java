package com.springboot.ybt.system.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.system.entity.SysDict;
import com.springboot.ybt.system.service.SysDictService;

@Controller
@RequestMapping(value = "/dict")
public class DictController {
	private static Logger logger = LoggerFactory.getLogger(DictController.class);
    @Resource
    private SysDictService dictService;

    /**
     * 用户列表
     */
    @RequestMapping(method = RequestMethod.GET, value = "/list")
    private String list() {
        return "system/dict/dictList";
    }


	@RequestMapping(value = "getDictList", method = RequestMethod.GET)
	@ResponseBody
	public PageInfo<SysDict> getDictList(String rows, String page, SysDict sysDict,HttpServletRequest request) {
		logger.info("获得数据字典信息列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");//来获得排序方式
		logger.info("排序的列名:"+sidx);
		logger.info("排序方式:"+sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysDict", sysDict);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysDict> searchSysDictInfo = dictService.getDictList(map);
		return searchSysDictInfo;
	}
    

}

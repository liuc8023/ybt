package com.springboot.ybt.system.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/icon")
@Api(value = "图标controller", tags = { "图标操作接口" })
public class IconController {
	private static Logger logger = LoggerFactory.getLogger(IconController.class);

	@ApiOperation(value = "跳转到图标选择页面", notes = "跳转到图标选择页面",hidden = true)
	@RequestMapping(value="turnToIconList",method=RequestMethod.GET)
	public ModelAndView  turnToIconList(HttpServletRequest request) {
		 logger.info("跳转到图标选择页面");
		 String iconName = request.getParameter("iconName");
		 ModelAndView modelAndView = new ModelAndView("system/icon/icon_selector");  
	     modelAndView.addObject("iconName", iconName);  
	     return modelAndView;  
	}
}

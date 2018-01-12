package com.springboot.ybt.system.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "common")
public class ComController {
	private static Logger logger = LoggerFactory.getLogger(ComController.class);
	
	/**
     * 定义404的返回页面
     *
     * @param request
     * @param response
     * @return
     */
	@RequestMapping(value="404")
	public String errorHtml404() {
		return "/error/404";
	}
	
	/**
     * 定义500的返回页面
     *
     * @param request
     * @param response
     * @return
     */
	@RequestMapping(value="500")
	public String errorHtml500() {
		return "/error/500";
	}

	//
	/**
     * 定义未授权403跳转的页面
     *
     * @param request
     * @param response
     * @return
     */
	@RequestMapping(value="403")
	public String noPermissions() {
		return "/error/403";
	}
	
	//druid监控跳转的页面
	@RequestMapping(value="/druid")
	public String druid() {
		logger.info("druid监控跳转的页面");
		return "druid";
	}
	
	@RequestMapping(value="/homePage")
	public String homePage() {
		logger.info("homePage首页跳转的页面");
		return "homePage";
	}
}

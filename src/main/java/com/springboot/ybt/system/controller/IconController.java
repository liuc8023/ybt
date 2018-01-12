package com.springboot.ybt.system.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/icon")
public class IconController {
	private static Logger logger = LoggerFactory.getLogger(IconController.class);

	@RequestMapping(value="turnToIconList",method=RequestMethod.GET)
	public ModelAndView  turnToIconList(HttpServletRequest request) {
		 logger.info("跳转到图表选择页面");
		 String iconName = request.getParameter("iconName");
		 ModelAndView modelAndView = new ModelAndView("system/icon/icon_selector");  
	     modelAndView.addObject("iconName", iconName);  
	     return modelAndView;  
	}
	
    @RequestMapping("/nodecorator/select")
    private String index(String iconName, HttpServletRequest request) {

        request.setAttribute("iconName", iconName);
        return "base/icon/icon_selector";
    }
}

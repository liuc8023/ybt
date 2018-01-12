package com.springboot.ybt.config;

import com.google.common.collect.Maps;
import com.springboot.ybt.common.filter.XssFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.FilterRegistrationBean;  
import org.springframework.context.annotation.Bean;  
import org.springframework.context.annotation.Configuration;  
  
import java.util.Map;  
  
@Configuration  
public class XssConfig{  
	private static Logger logger = LoggerFactory.getLogger(XssConfig.class);
    /** 
     * xss过滤拦截器 
     */  
    @Bean  
    public FilterRegistrationBean xssFilterRegistrationBean() {  
    	logger.info("xss过滤拦截器 ！！");
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();  
        filterRegistrationBean.setFilter(new XssFilter());  
        filterRegistrationBean.setOrder(1);  
        filterRegistrationBean.setEnabled(true);  
        filterRegistrationBean.addUrlPatterns("/*");  
        Map<String, String> initParameters = Maps.newHashMap();  
        initParameters.put("excludes", "/favicon.ico,/img/*,/js/*,/css/*");  
        initParameters.put("isIncludeRichText", "true");  
        filterRegistrationBean.setInitParameters(initParameters);  
        return filterRegistrationBean;  
    }  
}  
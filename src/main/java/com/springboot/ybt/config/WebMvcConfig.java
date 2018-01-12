package com.springboot.ybt.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import com.springboot.ybt.common.Interceptor.LoginInterceptor;


/**
 * 注册拦截器
 * @author liuc
 *
 */
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(new UserInterceptor()).addPathPatterns("/**").excludePathPatterns("/user/login");
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**")
        .excludePathPatterns("/login")
        .excludePathPatterns("/ajaxLogin")
        .excludePathPatterns("/getGifCode");
        super.addInterceptors(registry);
    }
}
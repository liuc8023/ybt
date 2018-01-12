package com.springboot.ybt.annotation;

import java.lang.annotation.*;

/**
 * 自定义注解 拦截Controller
 */

@Retention(RetentionPolicy.RUNTIME)//注解会在class中存在，运行时可通过反射获取
@Target(ElementType.METHOD)//目标是方法
@Documented//文档生成时，该注解将被包含在javadoc中，可去掉
public @interface SystemControllerLog {
	String description() default "";
}
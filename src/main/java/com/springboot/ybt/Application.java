package com.springboot.ybt;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;

import com.springboot.ybt.config.dbconfig.DataSourceConfiguration;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * springboot启动入口
 * 
 * @author liuc
 *
 */
// 扫描指定包下面的mapper接口
@MapperScan("com.springboot.ybt.*.dao")
@SpringBootApplication
@EnableSwagger2 //加上注解@EnableSwagger2 表示开启Swagger
@EnableCaching(proxyTargetClass = true) // 开启缓存功能
public class Application extends SpringBootServletInitializer implements CommandLineRunner {
	private static Logger log = LoggerFactory.getLogger(DataSourceConfiguration.class);
	// 入口
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	// Java EE应用服务器配置，
	// 如果要使用tomcat来加载jsp的话就必须继承SpringBootServletInitializer类并且重写其中configure方法
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	// springboot运行后此方法首先被调用
	// 实现CommandLineRunner抽象类中的run方法
	@Override
	public void run(String... args) throws Exception {
		log.info("springboot启动完成！");
	}
}

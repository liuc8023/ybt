package com.springboot.ybt.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@Configuration
@EnableTransactionManagement
/**
 * Druid的DataResource配置类
 * 
 * @author liuc
 * 
 *         凡是被Spring管理的类，实现接口 EnvironmentAware 重写方法 setEnvironment 可以在工程启动时，
 *         获取到系统环境变量和application配置文件中的变量。 还有一种方式是采用注解的方式获取 @value("${变量的key值}")
 *         ：获取application配置文件中的变量。 这里采用第一种要方便些
 * 
 */
public class DruidConfig {

	  private Logger logger = LoggerFactory.getLogger(DruidConfig.class);

	    @Value("${spring.datasource.write.url}")
	    private String dbUrl;

	    @Value("${spring.datasource.write.username}")
	    private String username;

	    @Value("${spring.datasource.write.password}")
	    private String password;

	    @Value("${spring.datasource.write.driver-class-name}")
	    private String driverClassName;

	    @Value("${spring.datasource.initialSize}")
	    private int initialSize;

	    @Value("${spring.datasource.minIdle}")
	    private int minIdle;

	    @Value("${spring.datasource.maxActive}")
	    private int maxActive;

	    @Value("${spring.datasource.maxWait}")
	    private int maxWait;

	    @Value("${spring.datasource.timeBetweenEvictionRunsMillis}")
	    private int timeBetweenEvictionRunsMillis;

	    @Value("${spring.datasource.minEvictableIdleTimeMillis}")
	    private int minEvictableIdleTimeMillis;
	     
	    @Value("${spring.datasource.validationQuery}")
	    private String validationQuery;

	    @Value("${spring.datasource.testWhileIdle}")
	    private boolean testWhileIdle;

	    @Value("${spring.datasource.testOnBorrow}")
	    private boolean testOnBorrow;

	    @Value("${spring.datasource.testOnReturn}")
	    private boolean testOnReturn;

	    @Value("${spring.datasource.poolPreparedStatements}")
	    private boolean poolPreparedStatements;
	    
	    @Value("${spring.datasource.maxPoolPreparedStatementPerConnectionSize}")
	    private int maxPoolPreparedStatementPerConnectionSize;
	    
	    @Value("${spring.datasource.filters}")
	    private String filters;
	    
	    @Value("${spring.datasource.connectionProperties}")
	    private String connectionProperties;
	    
	    @Value("${spring.datasource.logSlowSql}")
	    private String logSlowSql;

	    @Bean
	    public ServletRegistrationBean druidServlet() {
	    	ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean();
			servletRegistrationBean.setServlet(new StatViewServlet());
			servletRegistrationBean.addUrlMappings("/druid/*");
			Map<String, String> initParameters = new HashMap<String, String>();
			// initParameters.put("loginUsername", "admin");// 用户名
			// initParameters.put("loginPassword", "admin");// 密码
			initParameters.put("resetEnable", "false");// 禁用HTML页面上的“Reset All”功能
			initParameters.put("allow", ""); // IP白名单 (没有配置或者为空，则允许所有访问)
			// initParameters.put("deny", "192.168.20.38");// IP黑名单
			// (存在共同时，deny优先于allow)
			initParameters.put("logSlowSql", logSlowSql);
			servletRegistrationBean.setInitParameters(initParameters);
			return servletRegistrationBean;
	    }



	    /**
	     * 注册一个：DruidWebStatFilter
	     * @return
	     */
	    @Bean
	    public FilterRegistrationBean DruidWebStatFilter() {
	        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean(new WebStatFilter());
	        // 添加过滤规则.
	        filterRegistrationBean.addUrlPatterns("/*");
	        // 添加不需要忽略的格式信息.
	        filterRegistrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*");
	        // session最大数量配置, 缺省1000
	        filterRegistrationBean.addInitParameter("sessionStatMaxCount", "1000");
	        // 开启session统计功能
	        filterRegistrationBean.addInitParameter("sessionStatEnable", "true");
	        // 使得druid能够知道当前的session的用户是谁.根据需要，把其中的xxx.user修改为你user信息保存在session中的sessionName.
	        // 注意：如果你session中保存的是非string类型的对象，需要重载toString方法。
	        filterRegistrationBean.addInitParameter("principalSessionName", "user");
	        // 能够监控单个url调用的sql列表
	        filterRegistrationBean.addInitParameter("profileEnable", "true");
	        return filterRegistrationBean;
	    }


	    @Bean
	    public DataSource druidDataSource() {
	        DruidDataSource datasource = new DruidDataSource();
	        datasource.setUrl(dbUrl);
	        datasource.setUsername(username);
	        datasource.setPassword(password);
	        datasource.setDriverClassName(driverClassName);
	        datasource.setInitialSize(initialSize);
	        datasource.setMinIdle(minIdle);
	        datasource.setMaxActive(maxActive);
	        datasource.setMaxWait(maxWait);
	        datasource.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMillis);
	        datasource.setMinEvictableIdleTimeMillis(minEvictableIdleTimeMillis);
	        datasource.setValidationQuery(validationQuery);
	        datasource.setTestWhileIdle(testWhileIdle);
	        datasource.setTestOnBorrow(testOnBorrow);
	        datasource.setTestOnReturn(testOnReturn);
	        datasource.setPoolPreparedStatements(poolPreparedStatements);
	        datasource.setMaxPoolPreparedStatementPerConnectionSize(maxPoolPreparedStatementPerConnectionSize);
	        datasource.setConnectionProperties(connectionProperties);
	        try {
	            datasource.setFilters(filters);
	        } catch (SQLException e) {
	            logger.error("druid configuration initialization filter", e);
	        }
	        return datasource;
	    }

}

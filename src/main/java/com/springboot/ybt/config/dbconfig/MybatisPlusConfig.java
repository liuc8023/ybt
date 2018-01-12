package com.springboot.ybt.config.dbconfig;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicInteger;
import javax.sql.DataSource;
import org.apache.ibatis.mapping.DatabaseIdProvider;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.mybatis.spring.boot.autoconfigure.MybatisProperties;
import org.mybatis.spring.boot.autoconfigure.SpringBootVFS;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import com.github.pagehelper.PageInterceptor;
import com.springboot.ybt.util.SpringContextUtil;



@Configuration
@AutoConfigureAfter(DataSourceConfiguration.class)
@MapperScan(basePackages="com.springboot.ybt.*.dao")
public class MybatisPlusConfig {

	private static Logger log = LoggerFactory.getLogger(MybatisPlusConfig.class);

	@Autowired
	private MybatisProperties properties;

/*	@Autowired
	private ResourceLoader resourceLoader = new DefaultResourceLoader();*/

	@Autowired(required = false)
	private Interceptor[] interceptors;

	@Autowired(required = false)
	private DatabaseIdProvider databaseIdProvider;
	
	@Value("${spring.datasource.readSize}")
    private String readDataSourceSize;

	//XxxMapper.xml文件所在路径
	  @Value("${mybatis.mapperLocations}")
      private String mapperLocations;
	  
	  //  加载全局的配置文件
//    @Value("${mybatis.configLocation}")
//    private String configLocation;

      
	@Autowired
	@Qualifier("writeDataSource")
	private DataSource writeDataSource;
	@Autowired
	@Qualifier("readDataSource01")
	private DataSource readDataSource01;

	/**
	 * 这里全部使用mybatis-autoconfigure 已经自动加载的资源。不手动指定
	 * 配置文件和mybatis-boot的配置文件同步
	 * @return
	 */
  @Bean(name="sqlSessionFactory")
  public SqlSessionFactory sqlSessionFactorys() throws Exception {
      log.info("--------------------  sqlSessionFactory init ---------------------");
      try {
          SqlSessionFactoryBean sessionFactoryBean = new SqlSessionFactoryBean();
          sessionFactoryBean.setDataSource(roundRobinDataSouceProxy());
        if (this.databaseIdProvider != null) {
        	sessionFactoryBean.setDatabaseIdProvider(this.databaseIdProvider);
  		}
        // 读取配置 
  		if (StringUtils.hasLength(this.properties.getTypeAliasesPackage())) {
  			sessionFactoryBean.setTypeAliasesPackage(this.properties.getTypeAliasesPackage());
  		}
  		if (StringUtils.hasLength(this.properties.getTypeHandlersPackage())) {
  			sessionFactoryBean.setTypeHandlersPackage(this.properties.getTypeHandlersPackage());
  		}
  		//设置mapper.xml文件所在位置 
      	if (!ObjectUtils.isEmpty(this.properties.resolveMapperLocations())) {
      		sessionFactoryBean.setMapperLocations(this.properties.resolveMapperLocations());
		}
      //设置mybatis-config.xml配置文件位置
//       sessionFactoryBean.setConfigLocation(new DefaultResourceLoader().getResource(configLocation));
          sessionFactoryBean.setVfs(SpringBootVFS.class);  
          //添加分页插件、打印sql插件
          interceptors = new Interceptor[]{pageHelper(),new SqlPrintInterceptor()};
          sessionFactoryBean.setPlugins(interceptors);
          
          return sessionFactoryBean.getObject();
      } catch (IOException e) {
          log.error("mybatis resolver mapper*xml is error",e);
          return null;
      } catch (Exception e) {
          log.error("mybatis sqlSessionFactoryBean create error",e);
          return null;
      }
  }

  /**
   *  配置mybatis的分页插件pageHelper
   * @return
   */
  @Bean  
  public PageInterceptor pageHelper() {  
	  log.info("MyBatisConfiguration.pageHelper()");  
     /**
      * 5.0 是用这个类 com.github.pagehelper.PageInterceptor
      */
     PageInterceptor pageHelper = new PageInterceptor();  
      Properties p = new Properties();  
      p.setProperty("offsetAsPageNum", "true");  
      p.setProperty("rowBoundsWithCount", "true");  
      p.setProperty("reasonable", "true");  
//      p.setProperty("dialect","mysql");    //配置mysql数据库的方言(新版本能自动识别底层数据库,可以不用配置)
      pageHelper.setProperties(p);  
      return pageHelper;  
  }  
	
    /**
     * 把所有数据库都放在路由中
     * @return
     */
    @Bean(name="roundRobinDataSouceProxy")
    public AbstractRoutingDataSource roundRobinDataSouceProxy() {
    	
    	Map<Object, Object> targetDataSources = new HashMap<Object, Object>();
        //把所有数据库都放在targetDataSources中,注意key值要和determineCurrentLookupKey()中代码写的一至，
        //否则切换数据源时找不到正确的数据源
        targetDataSources.put(DataSourceType.write.getType(), writeDataSource);
        targetDataSources.put(DataSourceType.read.getType()+"1", readDataSource01);
//        targetDataSources.put(DataSourceType.read.getType()+"2", readDataSource02);
    
        final int readSize = Integer.parseInt(readDataSourceSize);
   //     MyAbstractRoutingDataSource proxy = new MyAbstractRoutingDataSource(readSize);
        
        //路由类，寻找对应的数据源
        AbstractRoutingDataSource proxy = new AbstractRoutingDataSource(){
        	 private AtomicInteger count = new AtomicInteger(0);
        	/**
             * 这是AbstractRoutingDataSource类中的一个抽象方法，
             * 而它的返回值是你所要用的数据源dataSource的key值，有了这个key值，
             * targetDataSources就从中取出对应的DataSource，如果找不到，就用配置默认的数据源。
             */
        	@Override
        	protected Object determineCurrentLookupKey() {
        		String typeKey = DataSourceContextHolder.getReadOrWrite();		
        		if(typeKey == null){
        			throw new NullPointerException("数据库路由时，决定使用哪个数据库源类型不能为空...");
        		}
        		
                if (typeKey.equals(DataSourceType.write.getType())){
                	 log.error("使用数据库write.............");
                    return DataSourceType.write.getType();
                }
                	
                //读库， 简单负载均衡
                int number = count.getAndAdd(1);
                int lookupKey = number % readSize;
                log.error("使用数据库read-"+(lookupKey+1));
                return DataSourceType.read.getType()+(lookupKey+1);
        	}
        };
        
        proxy.setDefaultTargetDataSource(writeDataSource);//默认库
        proxy.setTargetDataSources(targetDataSources);
        return proxy;
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
    	return new SqlSessionTemplate(sqlSessionFactory);
    }
    
    //事务管理
    @Bean
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager((DataSource)SpringContextUtil.getBean("roundRobinDataSouceProxy"));
    }
    
}

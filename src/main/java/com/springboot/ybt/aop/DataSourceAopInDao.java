package com.springboot.ybt.aop;

import org.aspectj.lang.annotation.Before;
import com.springboot.ybt.config.dbconfig.DataSourceContextHolder;


/**
 * 在dao层决定数据源(注：如果用这方式，service层不能使用事务，否则出问题，因为打开事务打开时，就会觉得数据库源了）
 * @author liuc
 *
 */
//@Aspect
//@Component
public class DataSourceAopInDao {
	
	@Before("execution(* com.springboot.ybt.*dao..*.find*(..)) "
			+ " or execution(* com.springboot.ybt.*dao..*.get*(..)) "
			+ " or execution(* com.springboot.ybt.*dao..*.query*(..))")
    public void setReadDataSourceType() {
        DataSourceContextHolder.setRead();
    }

    @Before("execution(* com.springboot.ybt.*dao..*.insert*(..)) "
    		+ " or execution(* com.springboot.ybt.*dao..*.update*(..))"
    		+ " or execution(* com.springboot.ybt.*dao..*.add*(..))")
    public void setWriteDataSourceType() {
        DataSourceContextHolder.setWrite();
    }
    
    
/*    @Before("execution(* com.fei.springboot.dao..*.*(..)) "
			+ " and @annotation(com.fei.springboot.annotation.ReadDataSource) ")
	public void setReadDataSourceType() {
		//如果已经开启写事务了，那之后的所有读都从写库读
		if(!DataSourceType.write.getType().equals(DataSourceContextHolder.getReadOrWrite())){
			DataSourceContextHolder.setRead();
		}
	    
	}
	
	@Before("execution(* com.fei.springboot.dao..*.*(..)) "
			+ " and @annotation(com.fei.springboot.annotation.WriteDataSource) ")
	public void setWriteDataSourceType() {
	    DataSourceContextHolder.setWrite();
	}*/
}

package com.springboot.ybt.util;

import java.io.InputStream;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PropertiesUtil {
	private static Logger logger = LoggerFactory.getLogger(PropertiesUtil.class);
	public final static Properties props=new Properties();

	static{
		PropertiesUtil.read("/application.properties");
	}


	public static void read(String path) {
		try {
			InputStream in = PropertiesUtil.class.getClassLoader()
					.getResourceAsStream(path);
			props.load(in);
			in.close();
		} catch (Exception e) {
			logger.info("读取配置文件失败---->>>>----(/config.properties)");
			e.printStackTrace();
		}

	}

	public static String getValue(String key) {
		try {
			String returnStr = "";
			returnStr = props.getProperty(key);
			return returnStr;
		} catch (Exception e) {
			return "";
		}

	}


	
}

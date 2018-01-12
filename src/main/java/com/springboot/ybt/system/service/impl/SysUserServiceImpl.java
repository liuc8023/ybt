package com.springboot.ybt.system.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.DefaultSessionKey;
import org.apache.shiro.session.mgt.SessionManager;
import org.crazycake.shiro.RedisSessionDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.annotation.ReadDataSource;
import com.springboot.ybt.annotation.SystemServiceLog;
import com.springboot.ybt.annotation.WriteDataSource;
import com.springboot.ybt.system.dao.SysUserMapper;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.entity.UserOnlineBo;
import com.springboot.ybt.system.service.SysUserService;

/**
 * @CacheConfig：该注解是用来开启声明的类参与缓存,如果方法内的@Cacheable注解没有添加key值，那么会自动使用cahceNames配置参数并且追加方法名。
 * @Cacheable：配置方法的缓存参数，可自定义缓存的key以及value。
 * @author liuc
 *
 */
@Service
@CacheConfig(cacheNames="SysUser")
public class SysUserServiceImpl extends BaseService<SysUser> implements SysUserService {
	private static Logger logger = LoggerFactory.getLogger(SysUserService.class);
	@Autowired
	private SysUserMapper userMapper;

	@Autowired
	RedisSessionDAO redisSessionDAO;

	@Autowired
	SessionManager sessionManager;

	// @Cacheable(key="#p0") // @Cacheable 会先查询缓存，如果缓存中存在，则不执行方法
	// @Transactional(propagation=Propagation.REQUIRED,readOnly=false,rollbackFor=Exception.class)
	// @ReadDataSource
	// public SysUser findById(String id){
	// System.err.println("根据id=" + id +"获取用户对象，从数据库中获取");
	// return this.userMapper.find(id);
	// }

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	public SysUser selectUserByNickName(String NickName) {
		logger.info("根据用户名获取用户对象，从数据库中获取");
		return userMapper.selectUserByNickName(NickName);

	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@WriteDataSource
	public void updateUserById(SysUser user) {
		this.userMapper.updateUserById(user);
	}

	// 获取在线session的用户对象
	public PageInfo<UserOnlineBo> getOnlineUserList() {
		// 因为我们是用redis实现了shiro的session的Dao,而且是采用了shiro+redis这个插件
		// 所以从spring容器中获取redisSessionDAO
		// 来获取session列表.
		Collection<Session> sessions = redisSessionDAO.getActiveSessions();
		Iterator<Session> it = sessions.iterator();
		List<UserOnlineBo> onlineUserList = new ArrayList<UserOnlineBo>();
		PageInfo<UserOnlineBo> page = new PageInfo<UserOnlineBo>();
		// 遍历session
		while (it.hasNext()) {
			// 这是shiro已经存入session的
			// 现在直接取就是了
			Session session = it.next();
			// 标记为已提出的不加入在线列表
			if (session.getAttribute("kickout") == null ? false : true)
				continue;
			UserOnlineBo onlineUser = getSessionBo(session);
			if (onlineUser != null) {
				onlineUserList.add(onlineUser);
			}
		}
		page = new PageInfo<UserOnlineBo>(onlineUserList);
		return page;
	}

	// 根据sessionId执行强制退出
	@Override
	public void kickout(Serializable sessionId) {
		this.getSessionBysessionId(sessionId).setAttribute("kickout", true);
	}

	// 根据sesisonid获取单个session对象
	private Session getSessionBysessionId(Serializable sessionId) {
		Session kickoutSession = sessionManager.getSession(new DefaultSessionKey(sessionId));
		return kickoutSession;
	}

	// 从session中获取UserOnline对象
	private UserOnlineBo getSessionBo(Session session) {
		// 获取session登录信息。
		Object obj = session.getAttribute("userSession");
		if (null == obj) {
			return null;
		}
		if (null != obj && obj instanceof SysUser) {
			// 存储session + user 综合信息
			UserOnlineBo userBo = new UserOnlineBo((SysUser) obj);
			// 最后一次和系统交互的时间
			userBo.setLastAccess(session.getLastAccessTime());
			// 主机的ip地址
			userBo.setHost(session.getHost());
			// session ID
			userBo.setSessionId(session.getId().toString());
			// session最后一次与系统交互的时间
//			userBo.setLastLoginTime(session.getLastAccessTime());
			// 回话到期 ttl(ms)
			userBo.setTimeout(session.getTimeout());
			// session创建时间
			userBo.setStartTime(session.getStartTimestamp());
			// 是否踢出
			userBo.setSessionStatus(false);
			return userBo;
		}
		return null;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	@SystemServiceLog(description="获取用户列表")
	@Cacheable 
	public PageInfo<SysUser> getUserList(Map<String, Object> map) {
		PageInfo<SysUser> page = new PageInfo<SysUser>();
		SysUser sysUser = (SysUser) map.get("sysUser");
		int pageSize = Integer.parseInt(map.get("pageSize").toString());
		int pageNo = Integer.parseInt(map.get("pageNo").toString());
		String sidx = (String) map.get("sidx");
		String sord = (String) map.get("sord");
		PageHelper.startPage(pageNo, pageSize, true);//分页查询
		if(!"".equals(sidx) &&!"".equals(sord)){
			PageHelper.orderBy(sidx+" "+sord); //按字段排序
		}
		List<SysUser> list = userMapper.select(sysUser);
		page = new PageInfo<SysUser>(list);
		return page;
	}
	
	//如果指定为 true，则方法调用后将立即清空所有缓存
    @CacheEvict(key ="#p0",allEntries=true)
    public void deleteById(String id){
    	userMapper.deleteByPrimaryKey(id);
    }

}

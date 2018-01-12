package com.springboot.ybt.toolkit.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.annotation.ReadDataSource;
import com.springboot.ybt.annotation.SystemServiceLog;
import com.springboot.ybt.base.service.RedisService;
import com.springboot.ybt.constant.MessageConstant;
import com.springboot.ybt.constant.RedisConstant;
import com.springboot.ybt.constant.Result;
import com.springboot.ybt.system.dao.SysUserMapper;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.service.impl.BaseService;
import com.springboot.ybt.toolkit.dao.SysMessageGroupMapper;
import com.springboot.ybt.toolkit.dao.SysMessageGroupUserMapper;
import com.springboot.ybt.toolkit.dao.SysMessageMapper;
import com.springboot.ybt.toolkit.entity.SysMessage;
import com.springboot.ybt.toolkit.entity.SysMessageGroup;
import com.springboot.ybt.toolkit.entity.SysMessageGroupUser;
import com.springboot.ybt.toolkit.service.MessageService;
import com.springboot.ybt.util.SecurityUtil;
import com.springboot.ybt.util.SimpleMailSender;
import com.springboot.ybt.util.StrUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created by liuc on 2017/01/11
 */
@Service
public class MessageServiceImpl extends BaseService<SysMessage>  implements MessageService {

    private static Logger logger = LoggerFactory.getLogger(MessageServiceImpl.class);
    @Autowired
	private RedisService redisService;
    
    @Autowired
	private SysMessageGroupUserMapper sysMessageGroupUserMapper;
    
    @Autowired
   	private SysMessageGroupMapper sysMessageGroupMapper;
    
    @Autowired
   	private  SysMessageMapper sysMessageMapper; 
    
    @Autowired
   	private  SysUserMapper sysUserMapper; 

   
    @Override
    public Result saveMessage(SysMessage message) {
        message.setSenduser(SecurityUtil.getUser().getNickname());
        message.setSenduserid(SecurityUtil.getUserId());
        //新增
        if (StrUtil.isEmpty(message.getId())) {
            //保存为草稿
            if (MessageConstant.SEND_STATUS_DRAFT.equals(message.getMessagestatus())) {
                this.save(message);
            }
            //直接保存并发送
            else if (MessageConstant.SEND_STATUS_SEND.equals(message.getMessagestatus())) {
                message.setSendtime(new Date());
                this.save(message);
                //复制消息到个人
//                this.saveRecievers(message);
            }
        } else {
            //编辑草稿
            message.setUpdatedatetime(new Date());
            if (MessageConstant.SEND_STATUS_DRAFT.equals(message.getMessagestatus())) {
                this.updateAll(message);
                //草稿变发送
            } else if (MessageConstant.SEND_STATUS_SEND.equals(message.getMessagestatus())) {
                //已发送不能编辑
                message.setSendtime(new Date());
                this.updateAll(message);
//                this.saveRecievers(message);
            }
        }
        return new Result();
    }



    /**
     * 消息发送
     *
     * @param message
     * @param userList
     * @return 
     */
    public Result sendMessageToUser(SysMessage message, List<SysUser> userList) {
    	Result result = new Result();
    	System.out.println(message.getMessagetype().indexOf(MessageConstant.TYPE_EMAIL));
        if (message.getMessagetype().indexOf(MessageConstant.TYPE_EMAIL) > -1) {
            SimpleMailSender mailSender = new SimpleMailSender();
            for (SysUser user : userList) {
                try {
                    //非上线系统注释该接口
                    mailSender.send(user.getEmail(), message.getSendsubject(), message.getSendcontent());
                    sysMessageMapper.insert(message);
                    result.setCode("200");
                    result.setSuccess(true);
                    result.setMessage("邮件发送成功！");
                    deleteCacheForMsgCount();
                } catch (Exception ex) {
                    logger.error("向用户【" + user.getNickname() + ":" + user.getEmail() + "】发送邮件失败，请检查邮箱是否正确");
                }
            }
        }

        if (message.getMessagetype().indexOf(MessageConstant.TYPE_SMS) > -1) {
            //TODO 发送短信
        }
		return result;

    }



	@Override
	@ReadDataSource
	public  Map<String, Object> getUserNamesByGroupIds(String groupIds) {
		 	String[] ids = groupIds.split(",");
		   	Map<String, Object> params = new HashMap<String, Object>();
		    params.put("ids", ids);
	        List<?> list = sysMessageGroupUserMapper.getUserNamesByGroupIds(params);
	        Map<String, Object> map = new HashMap<String, Object>();
	        map.put("name", StrUtil.mapToStr(list, "name"));
	        return map;
	}



	  @Override
	  @ReadDataSource
	    public Map<String, Object> getUserNamesByUserIds(String userIds) {     
	        String[] ids = userIds.split(",");
		   	Map<String, Object> params = new HashMap<String, Object>();
		    params.put("ids", ids);
	        List<?> list = sysUserMapper.getUserNamesByUserIds(params);
	        Map<String, Object> map = new HashMap<String, Object>();
	        map.put("name", StrUtil.mapToStr(list, "name"));
	        return map;
	    }


	@Override
	@ReadDataSource
	public Map<String, Integer> getMessageCount() {
		 Map<String, Integer> retMap =redisService.get(RedisConstant.MESSAGE_PRE+"count:"+SecurityUtil.getUserId(),Map.class);
	        if(retMap==null) {
	            retMap = new HashMap<>();
	            //发件箱
	            String sendUserID = SecurityUtil.getUser().getId();
	            Integer count_sent = sysMessageMapper.getMessageCount(sendUserID);
	            retMap.put("sent", count_sent.intValue());
//	            //草稿箱
//	            String hql_draft = "select count(id) from Message where sendUserID='" + SecurityUtil.getUserId() + "' and messageStatus='0'";
//	            Long count_draft = this.get(hql_draft);
//	            retMap.put("draft", count_draft.intValue());
//	            //收件箱
//	            String hql_inbox = "select count(id) from MessageReceiver where receiveUserID='" + SecurityUtil.getUserId() + "' and deleted=0";
//	            Long count_inbox = this.get(hql_inbox);
//	            retMap.put("inbox", count_inbox.intValue());
//	            //回收站
//	            String hql_trash = "select count(id) from MessageReceiver where receiveUserID='" + SecurityUtil.getUserId() + "' and deleted=1 ";
//	            Long count_trash = this.get(hql_trash);
//	            retMap.put("trash", count_trash.intValue());
	            redisService.add(RedisConstant.MESSAGE_PRE+"count:"+SecurityUtil.getUserId(), retMap);
	            return retMap;
	        }else {
	            return retMap;
	        }
	}



	@Override
	public void deleteCacheForMsgCount() {
		redisService.delete(RedisConstant.MESSAGE_PRE+"count:"+SecurityUtil.getUserId());
	}



	@Override
	@ReadDataSource
	 public List<SysMessageGroupUser> getUserByGroupId(String groupId) {
		return sysMessageGroupUserMapper.getUserByGroupId(groupId);

    }


	   @Override
	   @ReadDataSource
	   public List<SysMessageGroup> getMessageGroupByUserId(String userId) {
	        List<SysMessageGroup> groups = sysMessageGroupMapper.getMessageGroupByUserId(userId);
	        return groups;

	    }

	   @SuppressWarnings({ "rawtypes", "unchecked" })
	   @Override
	   @ReadDataSource
	    public Result checkExistGroup(String groupIds, String userIds) {
		   	String[] ids = groupIds.split(",");
		   	Map<String, Object> params = new HashMap<String, Object>();
		    params.put("ids", ids);
	        List<Map> idlist = sysMessageGroupUserMapper.selectUserIdByGroupIds(params);
	        String[] userArr = userIds.split(",");
	        if (idlist.size() != userArr.length) {
	            return new Result(false);
	        } else {
	            for (Map<String, Object> map : idlist) {
	            	if(useList(userArr,(String) map.get("user_id"))){
	            		 return new Result(true);
	            	}else{
	            		return new Result(false);
	            	}
	            }
	            return new Result(true);
	        }
	    }

	   
	   private static boolean useList(String[] arr, String targetValue) {
		    return Arrays.asList(arr).contains(targetValue);
		}




	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	@SystemServiceLog(description="获取已发邮件信息列表")
	public PageInfo<SysMessage> getMessageSendList(Map<String, Object> map) {
		PageInfo<SysMessage> page = new PageInfo<SysMessage>();
		SysMessage sysMessage = (SysMessage) map.get("sysMessage");
		int pageSize = Integer.parseInt(map.get("pageSize").toString());
		int pageNo = Integer.parseInt(map.get("pageNo").toString());
		String sidx = (String) map.get("sidx");
		String sord = (String) map.get("sord");
		PageHelper.startPage(pageNo, pageSize, true);//分页查询
		if(!"".equals(sidx) &&!"".equals(sord)){
			PageHelper.orderBy(sidx+" "+sord); //按字段排序
		}
		String sendUserID = SecurityUtil.getUser().getId();
		sysMessage.setSenduserid(sendUserID);
		sysMessage.setMessagestatus(MessageConstant.SEND_STATUS_SEND);
		List<SysMessage> list = sysMessageMapper.select(sysMessage);
		page = new PageInfo<SysMessage>(list);
		return page;
	}



	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	@ReadDataSource
	public SysMessage getSysMessageById(String id) {
		return sysMessageMapper.selectByPrimaryKey(id);
	}

//	   public List<SysMessageReceiver> getMessageReceiverList(List<SysUser> userList, SysMessage message) {
//	        List<SysMessageReceiver> receiverlist = new ArrayList<>();
//	        for (SysUser user : userList) {
//	        	SysMessageReceiver receiver = new SysMessageReceiver();
//	            receiver.setReadyet(MessageConstant.READ_NO);
//	            receiver.setMessage(message);
//	            receiver.setReceiveuserid(user.getId());
//	            receiver.setDeleted(0);
//	            receiver.setMessageflag(message.getMessageflag());
//	            receiver.setMessagetype(message.getMessagetype());
//	            if (receiver.getMessagetype().indexOf(MessageConstant.TYPE_EMAIL) > -1)
//	                receiver.setReceiveaddress(user.getEmail());
//	            if (receiver.getMessagetype().indexOf(MessageConstant.TYPE_SMS) > -1)
//	                receiver.setReceiveAddress(StrUtil.isEmpty(receiver.getReceiveaddress()) ?
//	                        user.getTelphone() : receiver.getReceiveaddress() + "," + user.getTelphone());
//	            receiverlist.add(receiver);
//	        }
//	        return receiverlist;
//	    }

}

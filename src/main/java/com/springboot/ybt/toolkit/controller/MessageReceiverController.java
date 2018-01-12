package com.springboot.ybt.toolkit.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.springboot.ybt.constant.Result;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.toolkit.entity.SysMessageGroup;
import com.springboot.ybt.toolkit.entity.SysMessageGroupUser;
import com.springboot.ybt.toolkit.service.MessageService;
import com.springboot.ybt.util.SecurityUtil;

@Controller
@RequestMapping(value="/message")
public class MessageReceiverController {
	private static Logger logger = LoggerFactory.getLogger(MessageReceiverController.class);
	@Autowired
	MessageService messageService;
	
	 //收件人管理
    @RequestMapping(value = "/receiver", method = RequestMethod.GET)
    public String receiver() {
    	logger.info("跳到收件人管理页面");
        return "toolkit/message/message_receiver";
    }
    
    //选择接收人
    @RequestMapping(value="/receiver/select",method=RequestMethod.GET)
    public String selectReceiver(HttpServletRequest request){
        SysUser user =SecurityUtil.getUser();
        //获取当前用户的消息用户群组
        List<SysMessageGroup> groups=messageService.getMessageGroupByUserId(user.getId());
        request.setAttribute("groups",groups);
        return "toolkit/message/message_receiver_select";
    }
    
  //接收人群组
    @RequestMapping(value = "/receiver/users/{groupId}",method = RequestMethod.POST)
    @ResponseBody
    public List<SysMessageGroupUser> getGroupUsers(@PathVariable("groupId")String groupId){
        return messageService.getUserByGroupId(groupId);
    }
    
    //校验是否userIds 完全包含在GroupIds中
    @RequestMapping(value = "/receiver/group/exist",method = RequestMethod.POST)
    @ResponseBody
    public Result existGroup(String groupIds,String userIds){
        return messageService.checkExistGroup(groupIds,userIds);
    }
    //根据群组ids获取接收人姓名
    @RequestMapping(value="/receiver/user/group",method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getByGroupIds(String groupIds){
        return messageService.getUserNamesByGroupIds(groupIds);
    }
    
    @RequestMapping(value = "/receiver/user/names",method = RequestMethod.POST)
    @ResponseBody
    public Map<?, ?> getByUserIds(String userIds){
    	System.out.println(userIds);
        return messageService.getUserNamesByUserIds(userIds);
    }
}

package com.springboot.ybt.toolkit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.springboot.ybt.constant.MessageConstant;
import com.springboot.ybt.constant.Result;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.service.SysUserService;
import com.springboot.ybt.toolkit.entity.SysMessage;
import com.springboot.ybt.toolkit.service.MessageService;
import com.springboot.ybt.util.DateUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author liuc
 * @since 2018-01-03
 */
@Api(value = "消息管理controller", tags = { "消息管理操作接口" })
@Controller
@RequestMapping(value = "message")
public class MessageController {
	private static Logger logger = LoggerFactory.getLogger(MessageController.class);
	@Autowired
	MessageService messageService;

	@Autowired
	SysUserService userService;

	/**
	 * 消息管理主页
	 *
	 * @return
	 */
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String userList() {
		logger.info("跳转到消息管理页面");
		return "toolkit/message/message_list";
	}

	// 收件箱
	@RequestMapping(value = "/inbox", method = RequestMethod.GET)
	public String inbox() {
		return "toolkit/message/message_inbox";
	}

	// 发件箱
	@RequestMapping(value = "/sent", method = RequestMethod.GET)
	public String sent() {
		return "toolkit/message/message_sent";
	}

	// 草稿箱
	@RequestMapping(value = "/draft", method = RequestMethod.GET)
	public String draft() {
		return "toolkit/message/message_draft";
	}

	// 垃圾箱/回收站
	@RequestMapping(value = "/trash", method = RequestMethod.GET)
	public String trash() {
		return "toolkit/message/message_trash";
	}

	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public String edit(String id, HttpServletRequest request) {
		request.setAttribute("id", id);
		return "toolkit/message/message_edit";
	}

	@RequestMapping(value = "/save")
	@ResponseBody
	public Result save(@RequestBody JSONObject json) {
		SysMessage msgobj = new SysMessage();
		List<SysUser> userList = new ArrayList<SysUser>();
		String receiverUsers = json.getString("receiverUsers");
		String[] nickNames = receiverUsers.split(",");
		for (int i = 0; i < nickNames.length; i++) {
			SysUser sysuer = userService.selectUserByNickName(nickNames[i]);
			userList.add(sysuer);
		}
		String sendSubject = json.getString("sendSubject");
		String sendContent = json.getString("sendContent");
		String messageType = json.getString("messageType");
		String messageFlag = json.getString("messageFlag");
		msgobj.setId(UUID.randomUUID().toString());
		msgobj.setReceiveusers(receiverUsers);
		msgobj.setSendsubject(sendSubject);
		msgobj.setSendcontent(sendContent);
		msgobj.setMessagetype(messageType);
		msgobj.setMessageflag(messageFlag);
		msgobj.setSendtime(DateUtil.getDateTime());
		msgobj.setCreatedatetime(DateUtil.getDateTime());
		msgobj.setMessagestatus(MessageConstant.SEND_STATUS_SEND);// 已发送
		// 保存为草稿或保存并直接发送
		// messageService.deleteCacheForMsgCount();
		return messageService.sendMessageToUser(msgobj, userList);
	}

	// 获取 收件箱 发件箱 草稿箱 回收站的统计数量
	@RequestMapping(value = "count", method = RequestMethod.POST)
	@ResponseBody
	@Cacheable("msg_count")
	public Map<?, ?> getCount() {
		return messageService.getMessageCount();
	}

	@ApiOperation(value = "获取发件箱列表", notes = "获取发件箱列表")
	@RequestMapping(value = "getMessageSendList", method = RequestMethod.GET)
	@ResponseBody
	public PageInfo<SysMessage> getMessageSendList(String rows, String page, SysMessage sysMessage,
			HttpServletRequest request) {
		logger.info("获取发件箱列表!");
		String sidx = request.getParameter("sidx");
		String sord = request.getParameter("sord");// 来获得排序方式
		logger.info("排序的列名:" + sidx);
		logger.info("排序方式:" + sord);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sysMessage", sysMessage);
		map.put("pageSize", rows);
		map.put("pageNo", page);
		map.put("sidx", sidx);
		map.put("sord", sord);
		PageInfo<SysMessage> searchMessageSendinfo = messageService.getMessageSendList(map);
		return searchMessageSendinfo;
	}

	// 发件明细
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(HttpServletRequest request) {
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		return "toolkit/message/message_detail";
	}

	@RequestMapping(value = "/get", method = RequestMethod.POST)
	@ResponseBody
	public SysMessage getSysMessageById(HttpServletRequest request) {
		String id = request.getParameter("id");
		return messageService.getSysMessageById(id);
	}
}

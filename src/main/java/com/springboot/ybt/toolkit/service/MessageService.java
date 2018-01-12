package com.springboot.ybt.toolkit.service;

import com.github.pagehelper.PageInfo;
import com.springboot.ybt.constant.Result;
import com.springboot.ybt.system.entity.SysUser;
import com.springboot.ybt.system.service.IService;
import com.springboot.ybt.toolkit.entity.SysMessage;
import com.springboot.ybt.toolkit.entity.SysMessageGroup;
import com.springboot.ybt.toolkit.entity.SysMessageGroupUser;

import java.util.List;
import java.util.Map;

/**
 * Created by liuc on 2016/12/27.
 * 
 */
public interface MessageService extends IService<SysMessage> {
    /**
     * 根据用户id获取消息群组
     * @param userId 用户Id
     * @return
     */
    List<SysMessageGroup> getMessageGroupByUserId(String userId);

    /**
     * 根据groupId获取接收人列表
     * @param groupId
     * @return
     */
    List<SysMessageGroupUser> getUserByGroupId(String groupId);

    /**
     * 校验当前选中的用户userIds是否正好包含在GroupIds中
     * @param groupIds
     * @param userIds
     * @return
     */
    Result checkExistGroup(String groupIds, String userIds);
//
//    /**
//     * 保存新的群组
//     * @param group
//     * @param userIds
//     * @return
//     */
//    MessageGroup saveGroup(MessageGroup group, String userIds);
//
//    /**
//     * 根据GroupIds获取群组列表
//     * @param groupIds
//     * @return
//     */
//    List<MessageGroup> getGroupListByIds(String groupIds);

    /**
     * 根据GroupIds获取用户名称
     * @param groupIds
     * @return
     */
    Map<String, Object> getUserNamesByGroupIds(String groupIds);

    /**
     * 根据UserIds获取用户名称
     * @param userIds
     * @return
     */
    Map<String, Object> getUserNamesByUserIds(String userIds);

    /**
     * 保存为草稿 保存并发送
     * @param message
     */
    Result saveMessage(SysMessage message);

    Map<?, ?> getMessageCount();

    /**
     * 删除msgcount的缓存
     */
    public void deleteCacheForMsgCount();

	Result sendMessageToUser(SysMessage msgobj, List<SysUser> userList);

	PageInfo<SysMessage> getMessageSendList(Map<String, Object> map);

	SysMessage getSysMessageById(String id);


}

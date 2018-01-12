package com.springboot.ybt.toolkit.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_message")
public class SysMessage implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 创建时间
     */
    @Column(name = "createDateTime")
    private Date createdatetime;

    /**
     * 删除标记(0启用，1禁用)
     */
    private Integer deleted;

    /**
     * 最后修改时间
     */
    @Column(name = "updateDateTime")
    private Date updatedatetime;

    /**
     * 版本号
     */
    private Integer version;

    /**
     * 消息标记( 0 重要紧急消息  1一般消息)
     */
    @Column(name = "messageFlag")
    private String messageflag;

    /**
     * 消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))
     */
    @Column(name = "messageStatus")
    private String messagestatus;

    /**
     * 消息类型(0 系统消息  1 邮件  2 短信)
     */
    @Column(name = "messageType")
    private String messagetype;

    /**
     * 主题
     */
    @Column(name = "sendSubject")
    private String sendsubject;

    /**
     * 发送时间
     */
    @Column(name = "sendTime")
    private Date sendtime;

    /**
     * 发送人
     */
    @Column(name = "sendUser")
    private String senduser;

    /**
     * 发送人id
     */
    @Column(name = "sendUserID")
    private String senduserid;

    /**
     * 接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)
     */
    @Column(name = "receiverType")
    private String receivertype;

    @Column(name = "receiveUsers")
    private String receiveusers;

    /**
     * 备注
     */
    private String remark;

    /**
     * 内容
     */
    @Column(name = "sendContent")
    private String sendcontent;

    /**
     * 附件
     */
    @Column(name = "fileIds")
    private String fileids;

    /**
     * 接收人ID/群组ID
     */
    @Column(name = "receiverIds")
    private String receiverids;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 获取创建时间
     *
     * @return createDateTime - 创建时间
     */
    public Date getCreatedatetime() {
        return createdatetime;
    }

    /**
     * 设置创建时间
     *
     * @param createdatetime 创建时间
     */
    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    /**
     * 获取删除标记(0启用，1禁用)
     *
     * @return deleted - 删除标记(0启用，1禁用)
     */
    public Integer getDeleted() {
        return deleted;
    }

    /**
     * 设置删除标记(0启用，1禁用)
     *
     * @param deleted 删除标记(0启用，1禁用)
     */
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    /**
     * 获取最后修改时间
     *
     * @return updateDateTime - 最后修改时间
     */
    public Date getUpdatedatetime() {
        return updatedatetime;
    }

    /**
     * 设置最后修改时间
     *
     * @param updatedatetime 最后修改时间
     */
    public void setUpdatedatetime(Date updatedatetime) {
        this.updatedatetime = updatedatetime;
    }

    /**
     * 获取版本号
     *
     * @return version - 版本号
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 设置版本号
     *
     * @param version 版本号
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 获取消息标记( 0 重要紧急消息  1一般消息)
     *
     * @return messageFlag - 消息标记( 0 重要紧急消息  1一般消息)
     */
    public String getMessageflag() {
        return messageflag;
    }

    /**
     * 设置消息标记( 0 重要紧急消息  1一般消息)
     *
     * @param messageflag 消息标记( 0 重要紧急消息  1一般消息)
     */
    public void setMessageflag(String messageflag) {
        this.messageflag = messageflag == null ? null : messageflag.trim();
    }

    /**
     * 获取消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))
     *
     * @return messageStatus - 消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))
     */
    public String getMessagestatus() {
        return messagestatus;
    }

    /**
     * 设置消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))
     *
     * @param messagestatus 消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))
     */
    public void setMessagestatus(String messagestatus) {
        this.messagestatus = messagestatus == null ? null : messagestatus.trim();
    }

    /**
     * 获取消息类型(0 系统消息  1 邮件  2 短信)
     *
     * @return messageType - 消息类型(0 系统消息  1 邮件  2 短信)
     */
    public String getMessagetype() {
        return messagetype;
    }

    /**
     * 设置消息类型(0 系统消息  1 邮件  2 短信)
     *
     * @param messagetype 消息类型(0 系统消息  1 邮件  2 短信)
     */
    public void setMessagetype(String messagetype) {
        this.messagetype = messagetype == null ? null : messagetype.trim();
    }

    /**
     * 获取主题
     *
     * @return sendSubject - 主题
     */
    public String getSendsubject() {
        return sendsubject;
    }

    /**
     * 设置主题
     *
     * @param sendsubject 主题
     */
    public void setSendsubject(String sendsubject) {
        this.sendsubject = sendsubject == null ? null : sendsubject.trim();
    }

    /**
     * 获取发送时间
     *
     * @return sendTime - 发送时间
     */
    public Date getSendtime() {
        return sendtime;
    }

    /**
     * 设置发送时间
     *
     * @param sendtime 发送时间
     */
    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    /**
     * 获取发送人
     *
     * @return sendUser - 发送人
     */
    public String getSenduser() {
        return senduser;
    }

    /**
     * 设置发送人
     *
     * @param senduser 发送人
     */
    public void setSenduser(String senduser) {
        this.senduser = senduser == null ? null : senduser.trim();
    }

    /**
     * 获取发送人id
     *
     * @return sendUserID - 发送人id
     */
    public String getSenduserid() {
        return senduserid;
    }

    /**
     * 设置发送人id
     *
     * @param senduserid 发送人id
     */
    public void setSenduserid(String senduserid) {
        this.senduserid = senduserid == null ? null : senduserid.trim();
    }

    /**
     * 获取接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)
     *
     * @return receiverType - 接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)
     */
    public String getReceivertype() {
        return receivertype;
    }

    /**
     * 设置接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)
     *
     * @param receivertype 接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)
     */
    public void setReceivertype(String receivertype) {
        this.receivertype = receivertype == null ? null : receivertype.trim();
    }

    /**
     * @return receiveUsers
     */
    public String getReceiveusers() {
        return receiveusers;
    }

    /**
     * @param receiveusers
     */
    public void setReceiveusers(String receiveusers) {
        this.receiveusers = receiveusers == null ? null : receiveusers.trim();
    }

    /**
     * 获取备注
     *
     * @return remark - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * 获取内容
     *
     * @return sendContent - 内容
     */
    public String getSendcontent() {
        return sendcontent;
    }

    /**
     * 设置内容
     *
     * @param sendcontent 内容
     */
    public void setSendcontent(String sendcontent) {
        this.sendcontent = sendcontent == null ? null : sendcontent.trim();
    }

    /**
     * 获取附件
     *
     * @return fileIds - 附件
     */
    public String getFileids() {
        return fileids;
    }

    /**
     * 设置附件
     *
     * @param fileids 附件
     */
    public void setFileids(String fileids) {
        this.fileids = fileids == null ? null : fileids.trim();
    }

    /**
     * 获取接收人ID/群组ID
     *
     * @return receiverIds - 接收人ID/群组ID
     */
    public String getReceiverids() {
        return receiverids;
    }

    /**
     * 设置接收人ID/群组ID
     *
     * @param receiverids 接收人ID/群组ID
     */
    public void setReceiverids(String receiverids) {
        this.receiverids = receiverids == null ? null : receiverids.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", createdatetime=").append(createdatetime);
        sb.append(", deleted=").append(deleted);
        sb.append(", updatedatetime=").append(updatedatetime);
        sb.append(", version=").append(version);
        sb.append(", messageflag=").append(messageflag);
        sb.append(", messagestatus=").append(messagestatus);
        sb.append(", messagetype=").append(messagetype);
        sb.append(", sendsubject=").append(sendsubject);
        sb.append(", sendtime=").append(sendtime);
        sb.append(", senduser=").append(senduser);
        sb.append(", senduserid=").append(senduserid);
        sb.append(", receivertype=").append(receivertype);
        sb.append(", receiveusers=").append(receiveusers);
        sb.append(", remark=").append(remark);
        sb.append(", sendcontent=").append(sendcontent);
        sb.append(", fileids=").append(fileids);
        sb.append(", receiverids=").append(receiverids);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
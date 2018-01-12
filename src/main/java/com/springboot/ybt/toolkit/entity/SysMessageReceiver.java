package com.springboot.ybt.toolkit.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_message_receiver")
public class SysMessageReceiver implements Serializable {
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

    @Column(name = "isRead")
    private String isread;

    /**
     * 消息标记(0 重要紧急消息  1一般消息)
     */
    @Column(name = "messageFlag")
    private String messageflag;

    /**
     * 消息类型(0 系统消息  1 邮件  2 短信)
     */
    @Column(name = "messageType")
    private String messagetype;

    /**
     * 读取时间
     */
    @Column(name = "readTime")
    private Date readtime;

    /**
     * 接收地址
     */
    @Column(name = "receiveAddress")
    private String receiveaddress;

    /**
     * 接收人id
     */
    @Column(name = "receiveUserID")
    private String receiveuserid;

    /**
     * 消息id
     */
    private String message;

    /**
     * 是否已读(0 未读  1 已读)
     */
    @Column(name = "readYet")
    private String readyet;

    /**
     * 备注
     */
    private String remark;

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
     * @return isRead
     */
    public String getIsread() {
        return isread;
    }

    /**
     * @param isread
     */
    public void setIsread(String isread) {
        this.isread = isread == null ? null : isread.trim();
    }

    /**
     * 获取消息标记(0 重要紧急消息  1一般消息)
     *
     * @return messageFlag - 消息标记(0 重要紧急消息  1一般消息)
     */
    public String getMessageflag() {
        return messageflag;
    }

    /**
     * 设置消息标记(0 重要紧急消息  1一般消息)
     *
     * @param messageflag 消息标记(0 重要紧急消息  1一般消息)
     */
    public void setMessageflag(String messageflag) {
        this.messageflag = messageflag == null ? null : messageflag.trim();
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
     * 获取读取时间
     *
     * @return readTime - 读取时间
     */
    public Date getReadtime() {
        return readtime;
    }

    /**
     * 设置读取时间
     *
     * @param readtime 读取时间
     */
    public void setReadtime(Date readtime) {
        this.readtime = readtime;
    }

    /**
     * 获取接收地址
     *
     * @return receiveAddress - 接收地址
     */
    public String getReceiveaddress() {
        return receiveaddress;
    }

    /**
     * 设置接收地址
     *
     * @param receiveaddress 接收地址
     */
    public void setReceiveaddress(String receiveaddress) {
        this.receiveaddress = receiveaddress == null ? null : receiveaddress.trim();
    }

    /**
     * 获取接收人id
     *
     * @return receiveUserID - 接收人id
     */
    public String getReceiveuserid() {
        return receiveuserid;
    }

    /**
     * 设置接收人id
     *
     * @param receiveuserid 接收人id
     */
    public void setReceiveuserid(String receiveuserid) {
        this.receiveuserid = receiveuserid == null ? null : receiveuserid.trim();
    }

    /**
     * 获取消息id
     *
     * @return message - 消息id
     */
    public String getMessage() {
        return message;
    }

    /**
     * 设置消息id
     *
     * @param message 消息id
     */
    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    /**
     * 获取是否已读(0 未读  1 已读)
     *
     * @return readYet - 是否已读(0 未读  1 已读)
     */
    public String getReadyet() {
        return readyet;
    }

    /**
     * 设置是否已读(0 未读  1 已读)
     *
     * @param readyet 是否已读(0 未读  1 已读)
     */
    public void setReadyet(String readyet) {
        this.readyet = readyet == null ? null : readyet.trim();
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
        sb.append(", isread=").append(isread);
        sb.append(", messageflag=").append(messageflag);
        sb.append(", messagetype=").append(messagetype);
        sb.append(", readtime=").append(readtime);
        sb.append(", receiveaddress=").append(receiveaddress);
        sb.append(", receiveuserid=").append(receiveuserid);
        sb.append(", message=").append(message);
        sb.append(", readyet=").append(readyet);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
package com.springboot.ybt.toolkit.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_message_group_user")
public class SysMessageGroupUser implements Serializable {
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
     * 消息组
     */
    @Column(name = "group_id")
    private String groupId;

    /**
     * 备注
     */
    private String remark;

    /**
     * 用户id
     */
    @Column(name = "user_id")
    private String userId;

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
     * 获取消息组
     *
     * @return group_id - 消息组
     */
    public String getGroupId() {
        return groupId;
    }

    /**
     * 设置消息组
     *
     * @param groupId 消息组
     */
    public void setGroupId(String groupId) {
        this.groupId = groupId == null ? null : groupId.trim();
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
     * 获取用户id
     *
     * @return user_id - 用户id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置用户id
     *
     * @param userId 用户id
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
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
        sb.append(", groupId=").append(groupId);
        sb.append(", remark=").append(remark);
        sb.append(", userId=").append(userId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
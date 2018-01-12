package com.springboot.ybt.toolkit.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_message_group")
public class SysMessageGroup implements Serializable {
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
     * 组名
     */
    private String name;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 消息组拥有者id
     */
    @Column(name = "user_id")
    private String userId;

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
     * 获取组名
     *
     * @return name - 组名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置组名
     *
     * @param name 组名
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取排序
     *
     * @return sort - 排序
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * 设置排序
     *
     * @param sort 排序
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * 获取消息组拥有者id
     *
     * @return user_id - 消息组拥有者id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置消息组拥有者id
     *
     * @param userId 消息组拥有者id
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
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
        sb.append(", name=").append(name);
        sb.append(", sort=").append(sort);
        sb.append(", userId=").append(userId);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
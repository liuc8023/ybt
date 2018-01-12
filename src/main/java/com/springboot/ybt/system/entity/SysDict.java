package com.springboot.ybt.system.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_dict")
public class SysDict implements Serializable {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 创建时间
     */
    @Column(name = "createDateTime")
    private Date createDateTime;

    /**
     * 删除标记(0启用，1禁用)
     */
    private Integer deleted;

    /**
     * 最后修改时间
     */
    @Column(name = "updateDateTime")
    private Date updateDateTime;

    /**
     * 版本号
     */
    private Integer version;

    /**
     * 唯一编码
     */
    private String code;

    /**
     * 层级编码
     */
    @Column(name = "levelCode")
    private String levelcode;

    /**
     * 字典名称
     */
    private String name;

    /**
     * 父级ID
     */
    @Column(name = "parent_id")
    private String parentId;

    /**
     * 字典值
     */
    @Column(name = "dictValue")
    private String dictvalue;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;

    /**
     * 获取id
     *
     * @return id - id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置id
     *
     * @param id id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 获取创建时间
     *
     * @return create_date_time - 创建时间
     */
    public Date getCreateDateTime() {
        return createDateTime;
    }

    /**
     * 设置创建时间
     *
     * @param createDateTime 创建时间
     */
    public void setCreateDateTime(Date createDateTime) {
        this.createDateTime = createDateTime;
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
     * @return update_date_time - 最后修改时间
     */
    public Date getUpdateDateTime() {
        return updateDateTime;
    }

    /**
     * 设置最后修改时间
     *
     * @param updateDateTime 最后修改时间
     */
    public void setUpdateDateTime(Date updateDateTime) {
        this.updateDateTime = updateDateTime;
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
     * 获取唯一编码
     *
     * @return code - 唯一编码
     */
    public String getCode() {
        return code;
    }

    /**
     * 设置唯一编码
     *
     * @param code 唯一编码
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * 获取层级编码
     *
     * @return levelCode - 层级编码
     */
    public String getLevelcode() {
        return levelcode;
    }

    /**
     * 设置层级编码
     *
     * @param levelcode 层级编码
     */
    public void setLevelcode(String levelcode) {
        this.levelcode = levelcode == null ? null : levelcode.trim();
    }

    /**
     * 获取字典名称
     *
     * @return name - 字典名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置字典名称
     *
     * @param name 字典名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 获取父级ID
     *
     * @return parent_id - 父级ID
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * 设置父级ID
     *
     * @param parentId 父级ID
     */
    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    /**
     * 获取字典值
     *
     * @return dictValue - 字典值
     */
    public String getDictvalue() {
        return dictvalue;
    }

    /**
     * 设置字典值
     *
     * @param dictvalue 字典值
     */
    public void setDictvalue(String dictvalue) {
        this.dictvalue = dictvalue == null ? null : dictvalue.trim();
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
        sb.append(", createDateTime=").append(createDateTime);
        sb.append(", deleted=").append(deleted);
        sb.append(", updateDateTime=").append(updateDateTime);
        sb.append(", version=").append(version);
        sb.append(", code=").append(code);
        sb.append(", levelcode=").append(levelcode);
        sb.append(", name=").append(name);
        sb.append(", parentId=").append(parentId);
        sb.append(", dictvalue=").append(dictvalue);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
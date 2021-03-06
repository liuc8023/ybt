package com.springboot.ybt.system.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_menu")
public class SysMenu implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;

	@Column(name = "createDateTime")
	private Date createDateTime;

	private Integer deleted;

	@Column(name = "updateDateTime")
	private Date updateDateTime;

	private Integer version;

	private String code;

	private String functype;

	private String icon;

	/**
	 * 层级编码
	 */
	@Column(name = "levelCode")
	private String levelcode;

	private String name;

	@Column(name = "parentId")
	private String parentId;

	private String url;

	private String remark;

	@Column(name = "parentName")
	private String parentName;

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
	 * @return create_date_time
	 */
	public Date getCreateDateTime() {
		return createDateTime;
	}

	/**
	 * @param createDateTime
	 */
	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	/**
	 * @return deleted
	 */
	public Integer getDeleted() {
		return deleted;
	}

	/**
	 * @param deleted
	 */
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	/**
	 * @return update_date_time
	 */
	public Date getUpdateDateTime() {
		return updateDateTime;
	}

	/**
	 * @param updateDateTime
	 */
	public void setUpdateDateTime(Date updateDateTime) {
		this.updateDateTime = updateDateTime;
	}

	/**
	 * @return version
	 */
	public Integer getVersion() {
		return version;
	}

	/**
	 * @param version
	 */
	public void setVersion(Integer version) {
		this.version = version;
	}

	/**
	 * @return code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code
	 */
	public void setCode(String code) {
		this.code = code == null ? null : code.trim();
	}

	/**
	 * @return functype
	 */
	public String getFunctype() {
		return functype;
	}

	/**
	 * @param functype
	 */
	public void setFunctype(String functype) {
		this.functype = functype == null ? null : functype.trim();
	}

	/**
	 * @return icon
	 */
	public String getIcon() {
		return icon;
	}

	/**
	 * @param icon
	 */
	public void setIcon(String icon) {
		this.icon = icon == null ? null : icon.trim();
	}

	/**
	 * @return levelCode
	 */
	public String getLevelcode() {
		return levelcode;
	}

	/**
	 * @param levelcode
	 */
	public void setLevelcode(String levelcode) {
		this.levelcode = levelcode == null ? null : levelcode.trim();
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	/**
	 * @return parent_id
	 */
	public String getParentId() {
		return parentId;
	}

	/**
	 * @param parentId
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId == null ? null : parentId.trim();
	}

	/**
	 * @return url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url
	 */
	public void setUrl(String url) {
		this.url = url == null ? null : url.trim();
	}

	/**
	 * @return remark
	 */
	public String getRemark() {
		return remark;
	}

	/**
	 * @param remark
	 */
	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	@Override
	public String toString() {
		return "SysMenu [id=" + id + ", createDateTime=" + createDateTime + ", deleted=" + deleted + ", updateDateTime="
				+ updateDateTime + ", version=" + version + ", code=" + code + ", functype=" + functype + ", icon="
				+ icon + ", levelcode=" + levelcode + ", name=" + name + ", parentId=" + parentId + ", url=" + url
				+ ", remark=" + remark + ", parentName=" + parentName + "]";
	}

}
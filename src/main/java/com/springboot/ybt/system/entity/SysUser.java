package com.springboot.ybt.system.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_user")
public class SysUser implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 用户昵称
     */
    private String nickname;

    /**
     * 盐
     */
    private String salt;

    /**
     * 邮箱|登录帐号
     */
    private String email;

    /**
     * 密码
     */
    private String pswd;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createTime;

    /**
     * 最后登录时间
     */
    @Column(name = "lastLoginTime")
    private String lastLoginTime;

    /**
     * 1:有效，0:禁止登录
     */
    private String status;

    @Column(name = "createNameId")//这种@Column注释不能少，不然按字段排序查询会报错
    private String createNameId;

    @Column(name = "lastUpdateTime")
    private Date lastUpdateTime;

    @Column(name = "lastUpdateNameId")
    private String lastUpdateNameId;

    private static final long serialVersionUID = 1L;
    
    public SysUser(){}
    
	public SysUser(SysUser user) {
		super();
		this.id = user.id;
		this.nickname = user.nickname;
		this.email = user.email;
		this.salt = user.salt;
		this.pswd = user.pswd;
		this.lastLoginTime = user.lastLoginTime;
		this.status = user.status;
		this.lastUpdateNameId = user.lastUpdateNameId;
		this.createNameId = user.createNameId;
		this.lastUpdateTime = user.lastUpdateTime;
		this.createTime = user.createTime;
	}


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
     * 获取用户昵称
     *
     * @return nickname - 用户昵称
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * 设置用户昵称
     *
     * @param nickname 用户昵称
     */
    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    /**
     * 获取盐
     *
     * @return salt - 盐
     */
    public String getSalt() {
        return salt;
    }

    /**
     * 设置盐
     *
     * @param salt 盐
     */
    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    /**
     * 获取邮箱|登录帐号
     *
     * @return email - 邮箱|登录帐号
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置邮箱|登录帐号
     *
     * @param email 邮箱|登录帐号
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * 获取密码
     *
     * @return pswd - 密码
     */
    public String getPswd() {
        return pswd;
    }

    /**
     * 设置密码
     *
     * @param pswd 密码
     */
    public void setPswd(String pswd) {
        this.pswd = pswd == null ? null : pswd.trim();
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取最后登录时间
     *
     * @return last_login_time - 最后登录时间
     */
    public String getLastLoginTime() {
        return lastLoginTime;
    }

    /**
     * 设置最后登录时间
     *
     * @param lastLoginTime 最后登录时间
     */
    public void setLastLoginTime(String lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /**
     * 获取1:有效，0:禁止登录
     *
     * @return status - 1:有效，0:禁止登录
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置1:有效，0:禁止登录
     *
     * @param status 1:有效，0:禁止登录
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    /**
     * @return create_name_id
     */
    public String getCreateNameId() {
        return createNameId;
    }

    /**
     * @param createNameId
     */
    public void setCreateNameId(String createNameId) {
        this.createNameId = createNameId == null ? null : createNameId.trim();
    }

    /**
     * @return last_update_time
     */
    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    /**
     * @param lastUpdateTime
     */
    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    /**
     * @return last_update_name_id
     */
    public String getLastUpdateNameId() {
        return lastUpdateNameId;
    }

    /**
     * @param lastUpdateNameId
     */
    public void setLastUpdateNameId(String lastUpdateNameId) {
        this.lastUpdateNameId = lastUpdateNameId == null ? null : lastUpdateNameId.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", nickname=").append(nickname);
        sb.append(", salt=").append(salt);
        sb.append(", email=").append(email);
        sb.append(", pswd=").append(pswd);
        sb.append(", createTime=").append(createTime);
        sb.append(", lastLoginTime=").append(lastLoginTime);
        sb.append(", status=").append(status);
        sb.append(", createNameId=").append(createNameId);
        sb.append(", lastUpdateTime=").append(lastUpdateTime);
        sb.append(", lastUpdateNameId=").append(lastUpdateNameId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

    public String getCredentialsSalt() {
		return nickname + salt;
	}
}
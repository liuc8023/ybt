package com.springboot.ybt.toolkit.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_file")
public class SysFile implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @Column(name = "create_date_time")
    private Date createDateTime;

    private Integer deleted;

    @Column(name = "update_date_time")
    private Date updateDateTime;

    private Integer version;

    @Column(name = "create_user_id")
    private String createUserId;

    @Column(name = "fileName")
    private String filename;

    @Column(name = "filePath")
    private String filepath;

    @Column(name = "fileSize")
    private Long filesize;

    @Column(name = "form_ID")
    private String formId;

    @Column(name = "savedName")
    private String savedname;

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
     * @return create_user_id
     */
    public String getCreateUserId() {
        return createUserId;
    }

    /**
     * @param createUserId
     */
    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    /**
     * @return fileName
     */
    public String getFilename() {
        return filename;
    }

    /**
     * @param filename
     */
    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
    }

    /**
     * @return filePath
     */
    public String getFilepath() {
        return filepath;
    }

    /**
     * @param filepath
     */
    public void setFilepath(String filepath) {
        this.filepath = filepath == null ? null : filepath.trim();
    }

    /**
     * @return fileSize
     */
    public Long getFilesize() {
        return filesize;
    }

    /**
     * @param filesize
     */
    public void setFilesize(Long filesize) {
        this.filesize = filesize;
    }

    /**
     * @return form_ID
     */
    public String getFormId() {
        return formId;
    }

    /**
     * @param formId
     */
    public void setFormId(String formId) {
        this.formId = formId == null ? null : formId.trim();
    }

    /**
     * @return savedName
     */
    public String getSavedname() {
        return savedname;
    }

    /**
     * @param savedname
     */
    public void setSavedname(String savedname) {
        this.savedname = savedname == null ? null : savedname.trim();
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
        sb.append(", createUserId=").append(createUserId);
        sb.append(", filename=").append(filename);
        sb.append(", filepath=").append(filepath);
        sb.append(", filesize=").append(filesize);
        sb.append(", formId=").append(formId);
        sb.append(", savedname=").append(savedname);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
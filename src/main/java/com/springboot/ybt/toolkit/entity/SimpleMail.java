package com.springboot.ybt.toolkit.entity;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by liuc on 2016/12/27.
 */
@Table
@Entity(name = "sys_simple_mail")
public class SimpleMail implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name = "title")
    private String subject;
    @Column(name = "content", length = 4000)
    private String content;
    @Column(name = "mail_type")
    private String mailType;

    @Column(name="fromUser")
    private String fromUser;

    public String getFromUser() {
        return fromUser;
    }

    public void setFromUser(String fromUser) {
        this.fromUser = fromUser;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMailType() {
        return mailType;
    }

    public void setMailType(String mailType) {
        this.mailType = mailType;
    }
}

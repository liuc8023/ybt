package com.springboot.ybt.system.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_log")
public class SysLog implements Serializable {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 方法描述
     */
    private String description;

    /**
     * 执行方法
     */
    private String method;

    /**
     * 状态(0:正常 1:异常)
     */
    private String type;

    /**
     * 请求IP
     */
    private String requestip;

    /**
     * 异常代码
     */
    private String exceptioncode;

    /**
     * 执行时间
     */
    private String executetime;

    /**
     * 请求参数
     */
    private String params;

    /**
     * 操作人
     */
    private String operator;

    /**
     * 操作时间
     */
    @Column(name = "createDateTime")
    private Date createDateTime;

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
     * 获取方法描述
     *
     * @return description - 方法描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置方法描述
     *
     * @param description 方法描述
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * 获取执行方法
     *
     * @return method - 执行方法
     */
    public String getMethod() {
        return method;
    }

    /**
     * 设置执行方法
     *
     * @param method 执行方法
     */
    public void setMethod(String method) {
        this.method = method == null ? null : method.trim();
    }

    /**
     * 获取状态(0:正常 1:异常)
     *
     * @return type - 状态(0:正常 1:异常)
     */
    public String getType() {
        return type;
    }

    /**
     * 设置状态(0:正常 1:异常)
     *
     * @param type 状态(0:正常 1:异常)
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * 获取请求IP
     *
     * @return requestip - 请求IP
     */
    public String getRequestip() {
        return requestip;
    }

    /**
     * 设置请求IP
     *
     * @param requestip 请求IP
     */
    public void setRequestip(String requestip) {
        this.requestip = requestip == null ? null : requestip.trim();
    }

    /**
     * 获取异常代码
     *
     * @return exceptioncode - 异常代码
     */
    public String getExceptioncode() {
        return exceptioncode;
    }

    /**
     * 设置异常代码
     *
     * @param exceptioncode 异常代码
     */
    public void setExceptioncode(String exceptioncode) {
        this.exceptioncode = exceptioncode == null ? null : exceptioncode.trim();
    }

    /**
     * 获取执行时间
     *
     * @return executetime - 执行时间
     */
    public String getExecutetime() {
        return executetime;
    }

    /**
     * 设置执行时间
     *
     * @param executetime 执行时间
     */
    public void setExecutetime(String executetime) {
        this.executetime = executetime == null ? null : executetime.trim();
    }

    /**
     * 获取请求参数
     *
     * @return params - 请求参数
     */
    public String getParams() {
        return params;
    }

    /**
     * 设置请求参数
     *
     * @param params 请求参数
     */
    public void setParams(String params) {
        this.params = params == null ? null : params.trim();
    }

    /**
     * 获取操作人
     *
     * @return operator - 操作人
     */
    public String getOperator() {
        return operator;
    }

    /**
     * 设置操作人
     *
     * @param operator 操作人
     */
    public void setOperator(String operator) {
        this.operator = operator == null ? null : operator.trim();
    }

    /**
     * 获取操作时间
     *
     * @return create_date_time - 操作时间
     */
    public Date getCreateDateTime() {
        return createDateTime;
    }

    /**
     * 设置操作时间
     *
     * @param createDateTime 操作时间
     */
    public void setCreateDateTime(Date createDateTime) {
        this.createDateTime = createDateTime;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", description=").append(description);
        sb.append(", method=").append(method);
        sb.append(", type=").append(type);
        sb.append(", requestip=").append(requestip);
        sb.append(", exceptioncode=").append(exceptioncode);
        sb.append(", executetime=").append(executetime);
        sb.append(", params=").append(params);
        sb.append(", operator=").append(operator);
        sb.append(", createDateTime=").append(createDateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
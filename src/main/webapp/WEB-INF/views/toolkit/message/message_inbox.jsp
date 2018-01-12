<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="/common.jsp" flush="true" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/dist/css/AdminLTE.min.css">
<script src="${ctx}/static/common/js/base-message.js"></script>

<script src="${ctx}/static/js/module/system/user/SysUser.js"></script>
<!-- Content Header (Page header) -->
<div class="ibox-content">
	<div class="form-group">
	    <div class="btn-group">
	        <button type="button" class="btn btn-default btn-sm" disabled data-btn-type="delete" title="放入回收站"><i
	                class="fa fa-trash-o"></i></button>
	        <button type="button" class="btn btn-default btn-sm" disabled data-btn-type="reply" title="回复邮件"><i
	                class="fa fa-reply"></i></button>
	        <button type="button" class="btn btn-default btn-sm" disabled data-btn-type="share" title="转发邮件"><i
	                class="fa fa-share"></i></button>
		</div>
		<div class="btn-group">
	        <button type="button" class="btn btn-default btn-sm" disabled data-btn-type="readNo" title="标记为未读"><i
	                class="fa fa-flag-o"></i></button>
	        <button type="button" class="btn btn-default btn-sm" disabled data-btn-type="readYes" title="标记为已读"><i
	                class="fa fa-flag text-yellow"></i></button>
	    </div>
	</div>
		<div class="form-group">
			<div class="input-group">
				<input id="txtSearchKey" type="text" class="input form-control"
					placeholder="搜索关键字" /> <span class="input-group-btn">
					<button id="btnSearch" class="btn btn btn-primary" type="button">
						<i class="fa fa-search"></i> 搜索
					</button>
				</span>
			</div>
		</div>

		<div class="jqGrid_wrapper">
			<table id="table_list"></table>
			<div id="pager_list"></div>
		</div>
	</div>

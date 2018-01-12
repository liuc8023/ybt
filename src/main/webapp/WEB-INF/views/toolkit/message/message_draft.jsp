<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/dist/css/AdminLTE.min.css">
<script src="${ctx}/static/common/js/base-message.js"></script>
<script src="${ctx}/static/js/content/base.js"></script>
<script src="${ctx}/static/js/content/list.js"></script>
<script src="${ctx}/static/js/module/system/user/SysUser.js"></script>
<!-- Content Header (Page header) -->
<div class="jqGrid_wrapper">
	<table id="table_list"></table>
	<div id="pager_list"></div>
</div>
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
<div class="ibox-content">
	<div class="form-group">
		<button id="btnAdd" type="button" class="btn btn-primary "
			onclick="addfunc()">
			<i class="fa fa-plus"></i>&nbsp;添加
		</button>
		<button id="btnEdit" type="button" class="btn btn-info "
			onclick="editModel()">
			<i class="fa fa-pencil"></i> 编辑
		</button>
		<button id="btnDel" type="button" class="btn btn-danger "
			onclick="delData()">
			<i class="fa fa-remove"></i>&nbsp;&nbsp;<span class="bold">删除</span>
		</button>
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

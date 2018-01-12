<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="/common.jsp" flush="true" />
<script src="${ctx}/static/js/module/system/role/SysRole.js"></script>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		角色管理 <small>列表</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${basePath}"><i class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="#">系统管理</a></li>
		<li class="active">角色管理</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div>
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="form-group">
					<button id="btnAdd" type="button" class="btn btn-primary "
						onclick="addModel()">
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
		</div>
	</div>
	<!-- /.row -->
</section>
<script>

</script>
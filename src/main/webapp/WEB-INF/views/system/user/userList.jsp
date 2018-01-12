<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="/common.jsp" flush="true" />
<script src="${ctx}/static/js/module/system/user/SysUser.js"></script>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		用户管理 <small>列表</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${basePath}"><i class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="#">系统管理</a></li>
		<li class="active">用户管理</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div>
		<div class="ibox float-e-margins">
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
					<button class="btn btn-primary btn-purple" onclick="relateRole()">
						<i class="icon-cogs align-top bigger-125"></i>用户关联角色
					</button>
					<div class="btn-group">
						<ul class="nav navbar-nav">
							<li class="light-blue">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									<i class="icon-cloud-download align-top bigger-125"></i>导出 <span
										class="caret"></span>
								</button>
								<ul
									class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
									<li><a href="javascript:void(0);"
										onclick="downloadExcel();"> <i
											class="fa fa-file-excel-o fa-fw green"></i> 导出Excel
									</a></li>

									<li><a href="#"> <i class="fa fa-file-pdf-o fa-fw red"></i>
											导出PDF
									</a></li>

									<li><a href="javascript:void(0);"
										onclick="downloadWord();"> <i
											class="fa fa-file-word-o fa-fw blue"></i> 导出Word
									</a></li>
								</ul>
							</li>
						</ul>
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
	</div>
</section>

<script>

</script>
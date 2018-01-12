<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<jsp:include page="/common.jsp" flush="true" />
<script src="${ctx}/static/js/module/system/user/SysUser.js"></script>
<section class="content-header">
	<h1>
		用户管理 <small>新增</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${basePath}"><i class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="#">系统管理</a></li>
		<li class="active">用户管理</li>
	</ol>
</section>

<section class="content">
	<div>
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="form-group">
					<form id="user-form" name="user-form" class="form-horizontal">
						<input type="hidden" name="id"> <input type="hidden"
							name="version"> <input type="hidden" name="isSuperAdmin">
						<input type="hidden" name="createDateTime" data-flag="date"
							data-format="yyyy-mm-dd hh:ii:ss"> <input type="hidden"
							name="deleted"> <input type='hidden' value='${CSRFToken}'
							id='csrftoken'>
						<div class="box-header">
							<div class="col-xs-12 text-center">
								<div class="avatar-container text-center">
									<img src="{ctx}/static/common/images/avatar.jpg" id="avatarImg"
										class="avatar-img">
								</div>
								<div>
									<button type="button" class="btn btn-sm btn-camera"
										data-btn-type="upload">
										<i class="fa fa-camera">&nbsp;上传/更改头像</i>
									</button>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name" class="col-sm-3 control-label">姓名</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="姓名">
									</div>
								</div>
								<div class="form-group has-feedback">
									<label for="birthday" class="col-sm-3 control-label">出生日期</label>
									<div class="input-group date col-sm-8"
										style="padding-left: 15px; padding-right: 15px;">
										<div class="input-group-addon">
											<i class="fa fa-calendar"></i>
										</div>
										<input class="form-control" data-flag="datepicker"
											data-format="yyyy-mm-dd" id="birthday" name="birthday"
											placeholder="出生日期" data-bv-field="birthday" type="text"><i
											style="display: none;" class="form-control-feedback"
											data-bv-icon-for="birthday"></i> <small
											style="display: none;" data-bv-validator="notEmpty"
											data-bv-validator-for="birthday" class="help-block">请输入出生日期</small><small
											style="display: none;" data-bv-validator="date"
											data-bv-validator-for="birthday" class="help-block">请输入有效日期</small>
									</div>
								</div>
								<div class="form-group">
									<label for="telphone" class="col-sm-3 control-label">座机</label>

									<div class="col-sm-8">
										<input type="text" class="form-control" id="telphone"
											name="telphone" placeholder="座机">
									</div>
								</div>
								<div class="form-group">
									<label for="email" class="col-sm-3 control-label">Email</label>

									<div class="col-sm-8">
										<input type="text" class="form-control" id="email"
											name="email" placeholder="Email">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-sm-3 control-label">性别</label>

									<div class="col-sm-8">
										<label class="control-label"> <input type="radio"
											name="sex" data-flag="icheck" class="square-green" value="1">
											男
										</label> &nbsp; <label class="control-label"> <input
											type="radio" name="sex" data-flag="icheck"
											class="square-green" value="0"> 女
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="loginName" class="col-sm-3 control-label">登录名</label>

									<div class="col-sm-8">
										<input type="text" class="form-control" id="loginName"
											name="loginName" placeholder="登录名">
									</div>
								</div>
								<div class="form-group">
									<label for="mobile" class="col-sm-3 control-label">手机</label>

									<div class="col-sm-8">
										<!--<input type="text" class="form-control" id="mobile" name="mobile" placeholder="手机"
                                                           data-inputmask='"mask": "9999999999999"' data-mask>-->
										<input type="text" class="form-control" id="mobile"
											name="mobile" placeholder="手机">
									</div>
								</div>
								<div class="form-group">
									<label for="qq" class="col-sm-3 control-label">QQ</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="qq" name="qq"
											placeholder="QQ">
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer text-right">
							<!--以下两种方式提交验证,根据所需选择-->
							<button type="button" class="btn btn-default"
								data-btn-type="cancel">取消</button>
							<button type="submit" class="btn btn-primary"
								data-btn-type="save">提交</button>
						</div>
						<!-- /.box-footer -->
					</form>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
</section>

<script type="text/javascript">
    $(function () {
        $("#birthday").datepicker({
            language: "zh-CN",
            autoclose: true,//选中之后自动隐藏日期选择框
            clearBtn: true,//清除按钮
            todayBtn: true,//今日按钮
            format: "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
        });
         
    });
    
</script>

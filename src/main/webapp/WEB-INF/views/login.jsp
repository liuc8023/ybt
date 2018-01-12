<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<% String contextPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath(); %>
<head>
<meta http-equiv="content-type" content="text/html">
<meta charset="UTF-8">
<title>YBT|登录</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${ctx}/static/common/favicon.ico" media="screen" />
<link rel="stylesheet" href="${ctx}/static/css/animate.min.css">
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/static/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctx}/static/css/style.min.css">
<link rel="stylesheet" href="${ctx}/static/css/iconfont.css">
<link rel="stylesheet"
	href="${ctx}/static/js/validator-0.7.3/jquery.validator.css">
<link rel="stylesheet"
	href="${ctx}/static/css/sweetalert/sweetalert.css">
<link rel="stylesheet" href="${ctx }/static/css/supersized.css">
<script src="${ctx}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="${ctx}/static/js/validator-0.7.3/jquery.validator.js"></script>
<script type="text/javascript"
	src="${ctx}/static/js/validator-0.7.3/local/zh_CN.js"></script>
<script type="text/javascript"
	src="${ctx}/static/js/sweetalert/sweetalert.min.js"></script>
<script src="${ctx }/static/js/supersized.3.2.7.min.js"></script>
<script src="${ctx }/static/js/supersized-init.js"></script>
</head>
<body bgcolor="#FFFFFF">
	<div class="middle-box text-center loginscreen  ">
		<div>
			<div onclick="boke();" class="animated animated lightSpeedIn ">
				<i class="icon iconfont">&#xf0028;</i>
			</div>
			<form id="userForm" class=" animated rollIn"
				data-validator-option="{theme:'yellow_right_effect',stopOnError:true}">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="用户名"
						data-rule="用户名:required" id="username">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="密码"
						data-rule="密码:required;password" id="password">
				</div>
				<div class="form-group col-xs-6" style="padding-left: 0px;">
					<img src="getGifCode" id="imgObj" name="imgObj" onclick="change();">
				</div>
				<div class="form-group col-xs-6">
					<span><input type="text" class="form-control"
						placeholder="验证码" data-rule="验证码:required" id="vcode"></span>
				</div>
				<div class="form-group" style="text-align: left">
					<label><input type="checkbox" id="rememberMe"
						style="width: 12px; height: 12px; margin-right: 5px;">记住我</label>
				</div>
				<button type="submit" class="btn btn-primary block full-width "
					onclick="login();">登 录</button>
			</form>
			<br /> <br />
			<div class="animated bounceInLeft" onclick="boke();">© 2017 All
				Rights Reserved. 邹海清|z77z的小码窝</div>
		</div>
	</div>
	<div class="part"
		style="z-index: -1; position: fixed; height: 100%; width: 100%; top: 0; left: 0"></div>
</body>
<script type="text/javascript">
function change() {
	 var imgSrc = $("#imgObj");
    imgSrc.attr("src", chgUrl("getGifCode"));
}
//时间戳   
//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
function chgUrl(url) {
var timestamp = (new Date()).valueOf();
url = url.substring(0, 17);
if ((url.indexOf("&") >= 0)) {
 url = url + "×tamp=" + timestamp;
} else {
 url = url + "?timestamp=" + timestamp;
}
return url;
}
	//跳转到个人博客
	function boke(){
		location.href = "http://z77z.oschina.io/";
	}

	function login() {
		var ctx = "${ctx}";
		var username = $("#username").val();
		var password = $("#password").val();
		var vcode = $("#vcode").val();
		var rememberMe =$('#rememberMe').is(':checked');
		$.ajax({
			type : "POST",
			data : {
				"username" : username,
				"password" : password,
				"vcode" : vcode,
				"rememberMe" : rememberMe
			},
			dataType : "json",
			url : ctx+"/ajaxLogin",
			success : function(result) {
				
				if (result.status != 200) {
					swal("哦豁",result.message,"error");
					change();
				} else {
					swal({title:"太帅了",text:"登录成功，进入系统！",type:"success"}, 
						function () {
						location.href = ctx+"/index";
				    });
				}
			}
		});
	}
</script>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link rel="shortcut icon" type="image/x-icon"
	href="${ctx}/static/common/favicon.ico" media="screen" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/static/common/css/base.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/bootstrap-treeview/bootstrap-treeview.min.css">

<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/datatables/select.bootstrap.min.css">
<link href="${ctx}/static/css/content-base.css" rel="stylesheet" />
<link href="${ctx}/static/css/jqgrid/ui.jqgrid.css" rel="stylesheet" />
<link rel="stylesheet"
	href="${ctx}/static/common/libs/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/iCheck/all.css">


<!-- jQuery 2.2.3 -->
<script src="${ctx}/static/adminlte/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${ctx}/static/adminlte/bootstrap/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script
	src="${ctx}/static/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${ctx}/static/adminlte/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${ctx}/static/adminlte/dist/js/app.js"></script>
<script src="${ctx}/static/adminlte/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${ctx}/static/adminlte/dist/js/demo.js"></script>
<script src="${ctx}/static/js/jquery-1.11.3.js"></script>
<script src="${ctx}/static/js/jquery-1.11.3.min.js"></script>
<script src="${ctx}/static/layer/layer.js"></script>
<script
	src="${ctx}/static/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
	src="${ctx}/static/adminlte/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
	src="${ctx}/static/adminlte/plugins/bootstrap-treeview/bootstrap-treeview.min.js"></script>
<script src="${ctx}/static/common/js/base-message.js"></script>
<script src="${ctx}/static/common/js/base.js"></script>

<script src="${ctx}/static/common/js/dataTables.js"></script>
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/js/content/base.js"></script>
<script src="${ctx}/static/js/content/list.js"></script>
<script src="${ctx}/static/common/js/base-message.js"></script>


<script type="text/javascript">
	var ctx = "${ctx}";
/* 	
	$(function(){
	    $.ajaxSetup ({
	        cache: false, //关闭AJAX缓存
	        async:false, //同步请求
	        contentType:"application/x-www-form-urlencoded;charset=utf-8",  
	        complete:function(XMLHttpRequest,textStatus){  
	            //通过XMLHttpRequest取得响应头，sessionstatus，  
	            var sessionstatus=XMLHttpRequest.getResponseHeader("sessionstatus");   
	            if(sessionstatus=="timeout"){  
	                alert("由于您长时间未操作,登录已失效,请重新登录");
	                parent.location.href = "${appPath}/login.do";
	            }  
	        }  
	    });
	}); */
</script>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<jsp:include page="/common.jsp" flush="true" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${ctx}/static/common/libs/fileinput/css/fileinput.min.css">
<link rel="stylesheet"
	href="${ctx}/static/common/libs/fileinput/css/fileinput.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/iCheck/all.css">


<form id="message_form" name="message_form" class="form-horizontal"
	enctype="multipart/form-data">
	<input type="hidden" name="fileIds" id="fileIds"> <input
		type="hidden" name="receiverType" id="receiverType"> <input
		type="hidden" name="receiverIds" id="receiverIds"> <input
		type="hidden" name="id" id="id" value="${id}">
	<div class="box-header with-border">
		<h3 class="box-title">查看消息</h3>
		<label id="messageType" class="pull-right"></label>
	</div>

	<div class="box-body">
		<div class="mailbox-read-info">
			<h3>
				<label id="messageFlag" class="pull-right"></label><label
					id="sendSubject"></label>
			</h3>
			<h5>
				收件人： <label id="receiverUsers"></label> <label
					class="mailbox-read-time pull-right" id="createDateTime"></label>
			</h5>
		</div>
		<div class="mailbox-read-message" id="sendContent"></div>
		<div class="col-md-12">

			<!--<div class="form-group">
                <div class="btn btn-default btn-file" id="uploadFile">
                    <i class="fa fa-paperclip"></i> 上传附件(Max. 10MB)
                </div>
            </div>-->
			<div class="form-group" id="file_container">
				<input type="file" name="file" class="file" id="attachment">
			</div>
		</div>
	</div>
	<div class="box-footer">
		<button type="reset" class="btn btn-default"
			data-btn-type="cancel_draft">
			<i class="fa fa-reply"></i> &nbsp;返回
		</button>
	</div>
</form>

<script src="${ctx}/static/common/js/base-message.js"></script>
<script type="text/javascript"
	src="${ctx}/static/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!--用于附件上传回填使用-->
<script src="${ctx}/static/common/libs/fileinput/js/fileinput.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/fileinput.min.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/locales/zh.js"></script>
<!--BaseFile组件-->
<script src="${ctx}/static/common/js/base-file.js"></script>
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/adminlte/plugins/ckeditor/ckeditor.js"></script>
<script src="${ctx}/static/adminlte/plugins/ckeditor/config.js"></script>
<script
	src="${ctx}/static/adminlte/plugins/ckeditor/samples/js/sample.js"></script>
<script>

$(function () {	
	   var id = $("#id").val();
	//编辑回填
	 ajaxPost(ctx + "/message/get?id=" + id, null, function (data) {
         //回填内容（含html的内容使用form组件回填有异常，所以手动回填）

         $("#sendSubject").html(data.sendsubject);
         $("#messageType").html(fnRenderMessageType(data.messagetype));
         $("#messageFlag").html(fnRenderMessageFlag(data.messageflag));
         $("#sendContent").html(data.sendcontent);
         $("#createDateTime").html(formatDate(data.createdatetime));
         //填报人回填
         if (data.receivertype == 0) {
             ajaxPost(ctx + "/message/receiver/user/group", {"groupIds": data.receiverids},
                     function (map) {
                         $("#receiverUsers").text(map.name);
                     });
         } else {
             ajaxPost(ctx + "/message/receiver/user/names", {userIds: data.receiverids},
                     function (map) {
                         $("#receiverUsers").text(map.name);
                     });
         }

     })
	
     $("#attachment").file({
         title: "请上传附件",
         fileinput: {
             maxFileSize: 10240,
             maxFileCount: 3
         },
         fileIdContainer: "[name='fileIds']",
         showType: 'detail',
         window: false
     });
     
   //取消，返回到收件箱
     $("[data-btn-type='cancel_draft']").click(function () {
         $("[data-btn-type='sent']").click();
     })
});	 
	 var imgs = [];
		CKEDITOR.replace('sendContent', {  //编辑器设置
			language: 'zh-cn', // 语言: 中文，默认是英文
			allowedContent: true, //关闭标签过滤
			//removePlugins: 'elementspath', // 编辑器下面不显示元素路径
			resize_enabled: true, // 是否允许拖动改变编辑器的大小
			height: '150px', // CKEditor 中编辑区的高度，不算工具栏的高度
			width: 'auto',
			//removeDialogTabs: 'image:advanced;image:Link;', 
		//	filebrowserImageUploadUrl: SaveDetailImgUrl, //上传图片Action
			image_previewText: ' ' //图像属性对话框里的图像信息下的预览为空
			//CKEDITOR.config.readOnly = true;
		}); 
		
	
</script>
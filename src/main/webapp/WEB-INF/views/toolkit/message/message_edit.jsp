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


<form id="message_form" name="message_form" class="form-horizontal"
	enctype="multipart/form-data">
	<input type="hidden" name="id" value="1"> <input type="hidden"
		name="version"> <input type="hidden" name="createDateTime"
		data-flag="date" data-format="yyyy-mm-dd hh:ii:ss"> <input
		type="hidden" name="deleted" value="0">
	<%--  <input type='hidden' value="${CSRFToken}" id='csrftoken'> --%>
	<input type="hidden" name="fileIds" id="fileIds">
	<!--<div class="box-header with-border">
        <h3 class="box-title">新建消息</h3>
    </div>-->
	<div class="box-body">
		<div class="col-md-12">
			<input type="hidden" name="receiverType" id="receiverType"> <input
				type="hidden" name="receiverIds" id="receiverIds">
			<div class="form-group">
				<div class="input-group">
					<input readonly id="receiverUsers" placeholder="接收人"
						class="form-control">
					<div class="input-group-addon">
						<a href="#" data-btn-type="receiver_select"><i
							class="fa fa-users"></i>&nbsp;&nbsp;选择接收人</a>
						<!-- <i class="fa fa-users" title="点击此按钮选择接收人"></i>-->
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" id="sendSubject"
					name="sendSubject" placeholder="标题，请控制在100字以内">
			</div>

			<div class="form-group">
				<!-- <label class="col-sm-2 control-label">消息类型<span style="color:red">*</span></label>-->
				<div class="col-sm-6">
					<label class="control-label"> <input type="checkbox"
						name="messageType" data-flag="icheck" class="square-green" checked
						value="0">&nbsp;&nbsp;系统消息
					</label> &nbsp; <label class="control-label"> <input
						type="checkbox" name="messageType" data-flag="icheck"
						class="square-green" value="1"> &nbsp;&nbsp;邮件
					</label>&nbsp; <label class="control-label"> <input type="checkbox"
						name="messageType" data-flag="icheck" class="square-green"
						disabled value="2"> &nbsp;&nbsp;短信
					</label>
				</div>
				<!-- <label class="col-sm-2 control-label">消息标记<span style="color:red">*</span></label>-->
				<div class="col-sm-6">
					<label class="control-label"> <input type="radio"
						name="messageFlag" data-flag="icheck" class="square-grey" checked
						value="0"> &nbsp;&nbsp;一般消息
					</label>&nbsp; <label class="control-label"> <input type="radio"
						name="messageFlag" data-flag="icheck" class="square-yellow"
						value="1"> &nbsp;&nbsp;重要消息
					</label>
				</div>
			</div>
			<div class="form-group">
				<textarea id="sendContent" name="sendContent" class="form-control"
					placeholder="请填写正文内容，系统消息和邮件限制在4000字以内，短信限制在70字以内"
					style="height: 200px">
                    </textarea>
			</div>
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
		<div class="pull-right">
			<button type="button" class="btn btn-default"
				data-btn-type="save_draft">
				<i class="fa fa-pencil"></i> 保存为草稿
			</button>
			<button type="button" class="btn btn-primary"
				data-btn-type="send_draft">
				<i class="fa fa-envelope-o"></i> 发送
			</button>
		</div>
		<button type="reset" class="btn btn-default"
			data-btn-type="cancel_draft">
			<i class="fa fa-times"></i> 取消
		</button>
	</div>
</form>
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/common/js/base-message.js"></script>
<script type="text/javascript"
	src="${ctx}/static/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!--用于附件上传回填使用-->
<script src="${ctx}/static/common/libs/fileinput/js/fileinput.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/fileinput.min.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/locales/zh.js"></script>
<!--BaseFile组件-->
<script src="${ctx}/static/common/js/base-file.js"></script>

<script src="${ctx}/static/adminlte/plugins/ckeditor/ckeditor.js"></script>
<script src="${ctx}/static/adminlte/plugins/ckeditor/config.js"></script>
<script
	src="${ctx}/static/adminlte/plugins/ckeditor/samples/js/sample.js"></script>
<script>
var id;
$(function () {	
	//初始化icheck样式
	 $("[data-flag='icheck']").iCheck({
         checkboxClass: 'icheckbox_square-green',
         radioClass: 'iradio_square-green'
     });
	
     $("#sendContent").val(CKEDITOR.instances.sendContent.getData());
    
	 $("#attachment").file({
		  fileinput: {
		   maxFileSize: 10240,
		   maxFileCount:3
		  },
		  fileIdContainer:"[name='fileIds']",
		  window:false
		 });
	 
	//保存为草稿
     $("[data-btn-type='save_draft']").click(function () {
         saveData(0);
     });
     //取消，返回到收件箱
     $("[data-btn-type='cancel_draft']").click(function () {
         $("[data-btn-type='cancel_draft']").click();
     });
     //发送邮件
     $("[data-btn-type='send_draft']").click(function () {
    	 saveData(1);
     })
     
     //选择接收人receiver_select
     $("[data-btn-type='receiver_select']").click(function () {
    	 	var layerWidth=$(window).width()*0.9 > 1100?1100:$(window).width()*0.9;
    	    var layerHeigth=$(window).height()*0.9 > 550?550:$(window).height()*0.9;
    	    top.layer.open({
    	    	type: 2,
    	    	shadeClose: false,//不允许点击遮罩关闭
    		    shade: 0.3,
    		    maxmin: true, //开启最大化最小化按钮
    		    skin: 'layui-layer-rim', //加上边框：layui-layer-rim；深蓝：layui-layer-lan；墨绿：layui-layer-molv 
    	        content: ctx + "/message/receiver/select",
    	        area: [layerWidth+'px', layerHeigth+'px'],
    	        title:'选择接收人',
    	        btn:["选 择","取 消"],
    	        yes:function(index, layero){
    	        	var data = $(layero).find("iframe")[0].contentWindow.savefunc();
    	        	$("#receiverUsers").val(data); 
    	        	top.layer.close(index);
    	        },
    	        closeBtn: 2,
    	        end: function () {
    	            //location.reload();
    	        }
    	    });
     });
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
		
		//保存消息 0=保存为草稿  1=保存并发送
	    function saveData(status) {
			var messageTypes =[];
			var messageFlags =[];
	    	var ck = $(':input[type=checkbox]');
	    	ck.each(function(){
	    	    if($(this).is(':checked')){
	    	        messageTypes.push($(this).val());
	    	    }
	    	})
	    	
	    	var cr = $(':input[type=radio]');
	    	cr.each(function(){
	    	    if($(this).is(':checked')){
	    	    	messageFlags.push($(this).val());
	    	    }
	    	})
	        var receiverUsers = $("#receiverUsers").val();
	        var sendSubject = $("#sendSubject").val();
	        var sendContent= CKEDITOR.instances.sendContent.getData();
	        var messageType =  messageTypes;
	        var messageFlag =  $("input[name='messageFlag']:radio").val();
	       // alert(messageType+";"+messageFlag);
	        if (!validateForm()){
	        	return;
	        }
	        var confirmMsg = status == 0 ? "确定保存为草稿？" : "确定保存并发送？";
	        var index = top.layer.confirm(confirmMsg, {
	        	skin: 'layui-layer-molv', //样式类名  自定义样式
	            btn : [ '确定', '取消' ]//按钮
	        }, function(index) {
	        	 $.ajax({
	        	    	url:ctx+"/message/save",
	        	        type: "POST",
	        	        contentType:'application/json;charset=UTF-8',
	        	        data:JSON.stringify(
	        	        		{"receiverUsers":receiverUsers,
	        	        		 "sendSubject":sendSubject,
	        	        		 "sendContent":sendContent,
	        	        		 "messageType":messageType,
	        	        		 "messageFlag":messageFlag
	        	        		 }),
	        	        dataType:'json',
	        		    async: false, //请求是否异步，默认为异步，这也是ajax重要特性
	        	        success: function(data) {
	        	        	if (data.success) {
			                    //保存成功跳转到收件箱
			                    top.layer.close(index);
			                    top.layer.alert(data.message, {
							    skin: 'layui-layer-molv' //样式类名  自定义样式
							   
							    ,anim: 1 //动画类型
							    ,offset: 'rb' //右下弹出提示
							    ,icon: 6    // icon
							    ,time:2000
							    ,end : function(layero, index){
							    	//邮件发送成功之后跳到消息管理首页
							    	window.location.href=ctx+"/mail/list";
							    	//updateMsgCount();
							    }
							    });
			                   
			                }
	        	        },
	        	        error: function() {
	        	          alert("error");
	        	        }
	        	      });
	        }); 
	    }
		
	    function validateForm() {
	        //接收人
	    /*     if (!$("#receiverIds").val()) {
	            top.layer.alert('接收人不能为空!', {
	            	skin: 'layui-layer-molv'
	            	,icon: 2
	            	,title:'提示'
	            	});
	            return false;
	        } */
	        if (!$("#sendSubject").val()) {
				 top.layer.alert('标题不能为空!', {
		            	skin: 'layui-layer-molv'
		            	,icon: 2
		            	,title:'提示'
		            	});
				 return false;
		     }if ($("input[name='messageType']:checked").length == 0) {
		            top.layer.alert('请选择消息类型!', {
		            	skin: 'layui-layer-molv'
		            	,icon: 2
		            	,title:'提示'
		            	});
		            return false;
		     }if (!$("#sendContent").val() || $("#sendContent").val().length > 4000) {
		            top.layer.alert('正文内容不能为空，且字数不能大于4000!', {
		            	skin: 'layui-layer-molv'
		            	,icon: 2
		            	,title:'提示'
		            	});
		            return false;
		     }else{
		    	 return true;
		     }
	           
	    }

</script>
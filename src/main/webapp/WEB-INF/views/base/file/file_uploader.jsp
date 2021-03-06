<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<jsp:include page="/common.jsp" flush="true" />
<link rel="stylesheet"
	href="${ctx}/static/common/libs/fileinput/css/fileinput.min.css">
<link rel="stylesheet"
	href="${ctx}/static/common/libs/fileinput/themes/explorer/theme.css"
	media="all" rel="stylesheet" type="text/css" />
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		onclick="closeUploader()" aria-hidden="true">
		<li class="fa fa-remove"></li>
	</button>
	<h5 class="modal-title"></h5>
</div>

<div class="modal-body" data-margin="top">
	<form name="file_form" id="file_form" enctype="multipart/form-data">
		<!--  <div class="file-preview">
            <div class="close fileinput-remove">×</div>
            <div class=" file-drop-zone"><div class="file-drop-zone-title">Drag &amp; drop files here …</div>
                <div class="file-preview-thumbnails">
                </div>
                <div class="clearfix"></div>    <div class="file-preview-status text-center text-success"></div>
                <div class="kv-fileinput-error file-error-message" style="display: none;"></div>
            </div>
        </div>-->
		<input type="file" name="file" id="filecontainer" class="file-loading">
		<div id="errorBlock" class="help-block"></div>
		<input type="hidden" id="sysfileIds">
	</form>

</div>
<script src="${ctx}/static/common/libs/fileinput/js/plugins/sortable.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/fileinput.js"></script>
<script src="${ctx}/static/common/libs/fileinput/js/locales/zh.js"></script>
<script
	src="${ctx}/static/common/libs/fileinput/themes/explorer/theme.js"></script>
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>-->
<script>
    //来自调用页面的配置，通过spring参数跳转获取参数 因为get方式传输 所以参数长度有限，可以使用data("file")获取对象
    //config.winId=fileObj.options.winId   config.callback/config.fileIds 获取不到 得用fileObj.options.fileIds
    var config =${config};
    console.log(config);
    var fileObj;
    $(function () {
        //多文件上传
        if(config.multiple)
            $("#filecontainer").attr("multiple", "multiple");
        //因为dailog共享父页面，所以也可以
        fileObj=$("#"+config.container).data("file");
        //config.container错误
        if(!fileObj){
            modals.error(config.container+"配置错误，请检查");
            return;
        }
        //预览回填
       /* var preview=[];
        var previewConfig=[];
        if(fileObj.options.fileIds){
           $("#sysfileIds").val(fileObj.options.fileIds);
           ajaxPost(basePath+"/file/getFiles",{fileIds:fileObj.options.fileIds},function(result){
               preview=result.initialPreview;
               previewConfig=result.initialPreviewConfig;
           });
        }*/
        //以上注释方法封装到BaseFile中
        var preview=[];
        var previewConfig=[];
        if(fileObj.options.fileIds){
            $("#sysfileIds").val(fileObj.options.fileIds);
            var result=fileObj.getFileResult(fileObj.options.fileIds);
            //ajaxPost(basePath+"/file/getFiles",{fileIds:fileObj.options.fileIds},function(result){
            preview=result.initialPreview;
            previewConfig=result.initialPreviewConfig;
            //});
        }

        //alert(initFileObj.options.title);
        //参数明细配置 参照api http://plugins.krajee.com/file-input#ajax-uploads
        $("#filecontainer").fileinput($.extend({
            initialPreview:preview,
            initialPreviewConfig:previewConfig,
            previewFileIconSettings:fileObj.previewFileIconSettings
        },fileObj.getFileInputConfig())).on("fileuploaded",function (event,data,previewId,index) {
            addFileId(data.response.fileIds);
            //绑定下载按钮事件
            fileObj.downloadHandler(this);
        }).on("filebatchuploadsuccess",function (event,data,previewId,index) {
            //console.log(data.response);
            //批量文件上传成功事件
            addFileId(data.response.fileIds);
            fileObj.downloadHandler(this);
            //上传成功关闭本窗体
            //modals.hideWin(fileObj.options.winId);
            //并执行回调函数
            //closeUploader();
        }).on("filedeleted",function (event,key) {
            deleteFileId(key);
        });
        //初始化页面绑定下载事件
        fileObj.downloadHandler($("#filecontainer"));
        //以下方法放在$(funtion(){})中是控制方法的作用域
        //在隐藏域中增加文件id
        function addFileId(fileIds){
            var newIds=fileObj.addFileIds(fileIds,$("#sysfileIds").val());
            $("#sysfileIds").val(newIds);
        }

        function deleteFileId(fileIds){
            var newIds=fileObj.deleteFileIds(fileIds,$("#sysfileIds").val());
            $("#sysfileIds").val(newIds);
        }
    })


    function closeUploader() {
        //wyhtml5也有modal样式，所以需要手动加上两句
        $(document.body).removeClass('modal-open');
        $(document.body).css("padding-right","0px");
        var fileIds=$("#sysfileIds").val();
        fileObj.callbackHandler(fileIds);
    }
  




</script>

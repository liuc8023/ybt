<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<jsp:include page="/common.jsp" flush="true" />

<section class="content-header">
	<h1>
		菜单管理 <small>新增</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${basePath}"><i class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="#">系统管理</a></li>
		<li class="active">菜单管理</li>
	</ol>
</section>

<section class="content">
	<div>
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="box-body">
						<form class="form-horizontal" id="function-form">
							<input type="hidden" name="parentId"/>
							<div class="form-group">
				                <label for="parentName" class="col-sm-2 control-label">上级</label>
				                <div class="col-sm-9">
					                <select class="form-control select2" >
					                  <option value="" selected="selected">根菜单</option>
					                </select>
				                </div>
			              </div>
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">名称</label>

								<div class="col-sm-9">
									<input type="text" class="form-control" id="name" name="name" placeholder="名称">
								</div>
							</div>
							<div class="form-group">
								<label for="code" class="col-sm-2 control-label">编码</label>

								<div class="col-sm-9">
									<input type="text" class="form-control" id="code" name="code" placeholder="编码">
								</div>
							</div>
								<div class="form-group">
								<label for="url" class="col-sm-2 control-label">URL</label>

								<div class="col-sm-9">
									<input type="text" class="form-control" id="url" name="url" placeholder="URL">
								</div>
							</div>
							<div class="form-group">
								<label for="levelCode" class="col-sm-2 control-label">层级编码</label>

								<div class="col-sm-9">
									<input type="text" class="form-control" id="levelCode" name="levelCode" placeholder="层级编码">
								</div>
							</div>
							 <div class="form-group">
								<label class="col-sm-2 control-label">菜单类型</label>
								<div class="col-sm-9">
									<label class="control-label">
                                        <input type="radio" data-flag="icheck" name="functype" class="square-green" checked="checked"	value="0"> 目录
									</label> &nbsp;&nbsp;&nbsp; <label class="control-label"> <input type="radio" data-flag="icheck" name="functype" class="square-green"
										value="1"> 菜单
									</label> &nbsp;&nbsp;&nbsp; <label class="control-label"> <input type="radio" data-flag="icheck" name="functype" class="square-green"
										value="2"> 按钮
									</label>
								</div>
							</div>
						   <div class="form-group">
								<label for="icon" class="col-sm-2 control-label">图标</label>
								<div class="col-sm-7">
								    <i data-bv-icon-for="icon" id="icon_i"  style="right:15px"></i>
									<input type="text" class="form-control" id="icon" name="icon" placeholder="图标">
								</div>
								<div class="col-sm-2">
								    <button type="button" id="selectIcon" class="btn btn-primary" data-btn-type="selectIcon">
										<i class="fa fa-hand-pointer-o">&nbsp;选择图标</i>
									</button>
								</div>
							</div>
							<div class="form-group">
								<label  class="col-sm-2 control-label">是否可用</label>
								<div class="col-sm-9">
									<label class="control-label"> <input type="radio" data-flag="icheck" name="deleted" class="square-green" checked="checked"
										value="0"> 启用
									</label> &nbsp;&nbsp;&nbsp;
									<label class="control-label"> <input type="radio" data-flag="icheck" name="deleted" class="square-green"	value="1"> 禁用
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="remark" class="col-sm-2 control-label">说明</label>
								<div class="col-sm-9">
									<textarea class="form-control" id="remark" name="remark" placeholder="说明"></textarea>
								</div>
							</div>
		                    <div class="box-footer">
								<div class="text-center">
									<button type="button" class="btn btn-default" data-btn-type="cancel" id="cancel">
										<i class="fa fa-reply" >&nbsp;取消</i>
									</button>
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-save">&nbsp;保存</i>
									</button>
								</div>
							</div>
						</form>
					</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
</section>
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>

<script type="text/javascript">
$(".select2").select2({
    language: "zh-CN", //设置 提示语言
    width: "100%", //设置下拉框的宽度
    //allowClear: true, //是否允许清空选中
    templateResult: formatState,
    templateSelection: function (data) {
        if (data.id === '') { // adjust for custom placeholder values
          	return '根目录';
        }

        return data.name;
      },
    theme: "classic",//下拉框样式
    ajax: {  
        url: ctx+'/menu/getMenuTree',  
        type:'GET',  
        dataType: 'json',  
        contentType:"application/json",
        data: function (params) {
            return {
                q: params.term, // search term
            };
        },
        processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true 
        }  
});

function formatState(state) {
	if(typeof(state.levelcode)!="undefined"){
		if(state.levelcode.length==6){
			 var $state = $(
				      '<div class="'+state.icon+'">&nbsp;' + state.name + '</div>'
				    );
		}else if(state.levelcode.length==12){
			 var $state = $(
					'<div class="'+state.icon+'" style="margin-left:20px;">&nbsp;' + state.name + '</div>'
				    );
		}
	}
    return $state;
};

function formatSelectionState(state) {
	if(typeof(state.levelcode)!="undefined"){
			 var $state = $(
				      '<div class="'+state.icon+'" style="margin-top:8px;">&nbsp;' + state.name + '</div>'
				    );
		
	}
    return $state;
};
$(function () {	
	//初始化icheck样式
	 $("[data-flag='icheck']").iCheck({
         checkboxClass: 'icheckbox_square-green',
         radioClass: 'iradio_square-green'
     });
});
    $("#selectIcon").click(function(){
		 var iconName = $("#icon").val();
		    top.layer.open({
		        type: 2,
		        content: ctx+'/icon/turnToIconList?iconName='+iconName,
		        area: ['900px', '700px'],
		        title:'图标选择器',
		        btn:["提  交","取 消"],
		        maxmin: true,   
		        yes:function(index, layero){
		            var data = $(layero).find("iframe")[0].contentWindow.getIconfunc();
		            $("#icon").val(data); 
			         var sear=new RegExp('fa');
			         if(sear.test(data)){
			            $("#icon_i").css({
			            	  "margin-top":"12px",
			                  "margin-right":"10px"
			            	  });
			         }else{
			        	 $('#icon_i').removeAttr("style");
			        	 $("#icon_i").css({
			                  "margin-right":"14px"
			            	  });
			         }
					$("#icon_i").removeClass().addClass("form-control-feedback").addClass(data);
					top.layer.close(index);
		        },
		        closeBtn: 2
		    });
	 });
    
    $("#cancel").click(function (){
    	window.location.href=ctx+'/menu/list';
    });
</script>

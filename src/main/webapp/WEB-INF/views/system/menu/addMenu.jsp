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
	href="${ctx}/static/adminlte/plugins/iCheck/all.css">
<link rel="stylesheet"
	href="${ctx}/static/adminlte/plugins/bootstrap-treeview/bootstrap-treeview.min.css">
<script
	src="${ctx}/static/adminlte/plugins/bootstrap-treeview/bootstrap-treeview.min.js"></script>
<script src="${ctx}/static/common/js/base-message.js"></script>
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>
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

	<div class="row">
		<div class="col-md-3">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<div id="tree"></div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
		<div class="col-md-9">
			<div class="box box-primary">
				<div class="box-header with-border">
					<div class="btn-group">
						<button type="button" class="btn btn-default"
							data-btn-type="addRoot">
							<li class="fa fa-plus">&nbsp;新增根菜单</li>
						</button>
						<button type="button" class="btn btn-default" data-btn-type="add">
							<li class="fa fa-plus">&nbsp;新增下级菜单</li>
						</button>
						<button type="button" class="btn btn-default" data-btn-type="edit">
							<li class="fa fa-edit">&nbsp;编辑当前菜单</li>
						</button>
						<button type="button" class="btn btn-default"
							data-btn-type="delete">
							<li class="fa fa-remove">&nbsp;删除当前菜单</li>
						</button>
						<button type="button" class="btn btn-default"
							data-btn-type="goback">
							<li class="fa fa-reply">&nbsp;返回</li>
						</button>
					</div>
					<!-- /.box-tools -->
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<form class="form-horizontal" id="function-form">
						<input type="hidden" name="parentId" id="parentId" />
						<div class="form-group">
							<label for="parentName" class="col-sm-2 control-label">上级</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" disabled="disabled"
									id="parentName" name="parentName" placeholder="上级">
							</div>
						</div>

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">名称</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="名称">
							</div>
						</div>
						<div class="form-group">
							<label for="code" class="col-sm-2 control-label">编码</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" id="code" name="code"
									placeholder="编码">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="col-sm-2 control-label">URL</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" id="url" name="url"
									placeholder="URL">
							</div>
						</div>
						<div class="form-group">
							<label for="levelCode" class="col-sm-2 control-label">层级编码</label>

							<div class="col-sm-9">
								<input type="text" class="form-control" id="levelCode"
									name="levelCode" placeholder="层级编码">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">菜单类型</label>
							<div class="col-sm-9">
								<label class="control-label"> <input type="radio"
									name="functype" class="square-green" checked="checked"
									value="0"> 目录
								</label> &nbsp;&nbsp;&nbsp; <label class="control-label"> <input
									type="radio" name="functype" class="square-green" value="1">
									菜单
								</label> &nbsp;&nbsp;&nbsp; <label class="control-label"> <input
									type="radio" name="functype" class="square-green" value="2">
									按钮
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="icon" class="col-sm-2 control-label">图标</label>
							<div class="col-sm-7">
								<i data-bv-icon-for="icon" id="icon_i"
									class="form-control-feedback fa fa-circle-o"
									style="right: 15px"></i> <input type="text"
									class="form-control" id="icon" name="icon" placeholder="图标">
							</div>
							<div class="col-sm-2">
								<button type="button" id="selectIcon"
									class="btn btn-primary disabled" data-btn-type="selectIcon">
									<i class="fa fa-hand-pointer-o">&nbsp;选择图标</i>
								</button>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">是否可用</label>
							<div class="col-sm-9">
								<label class="control-label"> <input type="radio"
									name="deleted" class="square-green" checked="checked" value="0">
									启用
								</label> &nbsp;&nbsp;&nbsp; <label class="control-label"> <input
									type="radio" name="deleted" class="square-green" value="1">
									禁用
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="remark" class="col-sm-2 control-label">说明</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="remark" name="remark"
									placeholder="说明"></textarea>
							</div>
						</div>
						<div class="box-footer" style="display: none">
							<div class="text-center">
								<button type="button" class="btn btn-default"
									data-btn-type="cancel">
									<i class="fa fa-reply">&nbsp;取消</i>
								</button>
								<button type="button" class="btn btn-primary"
									data-btn-type="save">
									<i class="fa fa-save">&nbsp;保存</i>
								</button>
							</div>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /. box -->
		</div>
	</div>
	<!-- /.row -->

</section>

<script>

			$(function() {
				//初始化icheck样式
				 $("[data-flag='icheck']").iCheck({
			         checkboxClass: 'icheckbox_square-green',
			         radioClass: 'iradio_square-green'
			     });
				initTree(0);
				
				//按钮事件
				var btntype=null;
				$('button[data-btn-type]').click(function() {
					var action = $(this).attr('data-btn-type');
					var selectedArr=$("#tree").data("treeview").getSelected();
					var selectedNode=selectedArr.length>0?selectedArr[0]:null;
					switch (action) {
					case 'addRoot':
						formWritable(action);
						formReset();
						$("#icon_i").removeClass();
						//填充上级菜单和层级编码
						fillParentAndLevelCode(null);
						btntype='add';
						break;
					case 'add':
						if(!selectedNode){
							top.layer.alert('请先选择上级菜单!', {
				            	skin: 'layui-layer-molv'
				            	,icon: 2
				            	,title:'提示'
				            	});
							return false;
						}
						formWritable(action);
						formReset();
						$("#icon_i").removeClass();
						//填充上级菜单和层级编码
						fillParentAndLevelCode(selectedNode);
						btntype='add';
						break;
					case 'edit':
						if(!selectedNode){
							top.layer.alert('请先选择要编辑的节点!', {
				            	skin: 'layui-layer-molv'
				            	,icon: 2
				            	,title:'提示'
				            	});
							return false;
						}
						if(btntype=='add'){
							fillDictForm(selectedNode);
						}
						formWritable(action);
						btntype='edit';
						break;
					case 'delete':
						if(!selectedNode){
							top.layer.alert('请先选择要删除的节点!', {
				            	skin: 'layui-layer-molv'
				            	,icon: 2
				            	,title:'提示'
				            	});
							return false;
						}
						if(btntype=='add')
							fillDictForm(selectedNode);
						formReadonly();
						$(".box-header button[data-btn-type='delete']").removeClass("btn-default").addClass("btn-primary");
					    if(selectedNode.nodes){
					    	top.layer.alert('该节点含有子节点，请先删除子节点!', {
				            	skin: 'layui-layer-molv'
				            	,icon: 2
				            	,title:'提示'
				            	});
					    	return false;
					    }
					    var index = top.layer.confirm("是否删除该节点?", {
				        	skin: 'layui-layer-molv', //样式类名  自定义样式
				            btn : [ '确定', '取消' ]//按钮
				        }, function(index) {
				        	ajaxPost(ctx+"/menu/delete?id="+selectedNode.id,null,function(data){
				        		if(data.result=="success"){
					        		top.layer.alert('删除菜单信息成功!', {
					        			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
					        			,closeBtn: 1    // 是否显示关闭按钮
					        		    ,btn: ['确定'] //按钮
					        		    ,anim: 4 //动画类型
					        		    ,icon:6
					        		    ,yes:function(){
					        		    	top.layer.closeAll();//点击确认按钮之后关闭所有的弹出框
					        		    	//window.location.reload();//刷新当前页
					        		    	//定位
								    		var brothers=$("#tree").data("treeview").getSiblings(selectedNode);
								    		if(brothers.length>0)
								    		   initTree(brothers[brothers.length-1].nodeId);
								    		else{
								    		   var parent=$("#tree").data("treeview").getParent(selectedNode);
								    		   initTree(parent?parent.nodeId:0);
								    		}
						            	}
					        		  });		
					        	}
					    		
					    	});
				        }); 
						break;
					case 'cancel':
						if(btntype=='add')
							fillDictForm(selectedNode);
						formReadonly();
						break;
					case 'selectIcon':
						var disabled=$(this).hasClass("disabled");
				        if(disabled)
				        	break;
						var iconName;
						if($("#icon").val())
						   iconName=encodeURIComponent($("#icon").val());
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
						  break;
					case 'save':
						var functype;
						var deleted;
						$("input[name='functype']").each(function() {  
						    if(true == $(this).is(':checked')) {  //判断是否选中，选中之后获取选中的值
						    	functype = this.value;
						    }
						}); 
						$("input[name='deleted']").each(function() {  
						    if(true == $(this).is(':checked')) {  //判断是否选中，选中之后获取选中的值
						    	deleted = this.value;
						    }
						});
						
						var params = {
								"parentId":$("#parentId").val(),
								"parentName":$("#parentName").val(),
								"name":$("#name").val(),
								"code":$("#code").val(),
								"url":$("#url").val(),
								"icon":$("#icon").val(),
								"levelcode":$("#levelCode").val(),
								"functype":functype,
								"deleted":deleted,
								"remark":$("#remark").val()
							};
						$.ajax({
					        type:'POST',
					        url:ctx+"/menu/insert",
					        contentType:'application/json;charset=UTF-8',
				            data:JSON.stringify(params),
				            dataType:'json',
				            async: false, //请求是否异步，默认为异步，这也是ajax重要特性
					        beforeSend: function(){//提交前校验
					        	if(false==check()){
					        		return false;
					        	}else{
					        		return true;
					        	}
					        },
					        success:function(data){
					        	if(data.result=="success"){
					        		top.layer.alert('新增菜单信息成功!', {
					        			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
					        			,closeBtn: 1    // 是否显示关闭按钮
					        		    ,btn: ['确定'] //按钮
					        		    ,anim: 4 //动画类型
					        		    ,icon:6
					        		    ,yes:function(){
					        		    	top.layer.closeAll();//点击确认按钮之后关闭所有的弹出框
					        		    	window.location.reload();//刷新当前页

						            	}
					        		  });		
					        	}
					        },
					        error:function()
					        {
					            top.layer.alert('服务器错误!', {
					    			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
					    		    ,closeBtn: 0
					    		    ,anim: 4 //动画类型
					    		    ,icon:2//1：勾号 2：X号 3：？号 4：锁 5：哭脸  6：笑脸 7：！号
					    		  });	
					        }
					    });
						break;
					case 'goback':
						window.location.href=ctx+"/menu/list";
						break;
					}
				});

			})
			
	//提交前校验
	function check(){
		var flag = false;
		var name=$("#name").val();
		var code=$("#code").val();
		var url=$("#url").val();
		var levelcode=$("#levelCode").val();
		var icon=$("#icon").val();
		if(""==name){
			top.layer.alert('名称不能为空!',{
			 	skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
			 	,title:'提示'
	 		    ,closeBtn: 0
	 		    ,anim: 4 //动画类型
	 		    ,icon:7
	        }); 
			flag = false;
			return flag;
		}
		if(""==code){
			top.layer.alert('编码不能为空!',{
			 	skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
			 	,title:'提示'
	 		    ,closeBtn: 0
	 		    ,anim: 4 //动画类型
	 		    ,icon:7
	        }); 
			flag = false;
			return flag;
		}
		if(""==levelcode){
			top.layer.alert('层级编码不能为空!',{
			 	skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
			 	,title:'提示'
	 		    ,closeBtn: 0
	 		    ,anim: 4 //动画类型
	 		    ,icon:7
	        }); 
			flag = false;
			return flag;
		}if(""==icon){
				top.layer.alert('请选择图标!',{
				 	skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
				 	,title:'提示'
		 		    ,closeBtn: 0
		 		    ,anim: 4 //动画类型
		 		    ,icon:7
		        }); 
				flag = false;
				return flag;
			}

		flag =true;
		return flag;
	}

			function initTree(selectNodeId){
				var treeData = null;
				ajaxPost(ctx + "/menu/treeData", null, function(data) {
					treeData = data;
					console.log(JSON.stringify(treeData));
				});
				$("#tree").treeview({
					data : treeData,
					showBorder : true,
					expandIcon : "glyphicon glyphicon-stop",
					collapseIcon : "glyphicon glyphicon-unchecked",
					levels : 1,
					onNodeSelected : function(event, data) {
						/*   alert("i am selected");
						  alert(data.nodeId); */
						fillDictForm(data);
						formReadonly();
						//console.log(JSON.stringify(data));
					}
				});
				if(treeData.length==0)
					return;
				//默认选中第一个节点
				selectNodeId=selectNodeId||0;
				$("#tree").data('treeview').selectNode(selectNodeId);
				$("#tree").data('treeview').expandNode(selectNodeId);
				$("#tree").data('treeview').revealNode(selectNodeId);
			}

			//新增时，带入父级菜单名称id,自动生成levelcode
			function fillParentAndLevelCode(selectedNode){
				$("input[name='parentName']").val(selectedNode?selectedNode.text:'系统菜单');
			    $("input[name='deleted'][value='0']").prop("checked","checked");
			    if(selectedNode){
			    	$("input[name='parentId']").val(selectedNode.id);
					var nodes=selectedNode.nodes;
					var levelCode=nodes?nodes[nodes.length-1].levelCode:null;
					$("input[name='levelCode']").val(getNextCode(selectedNode.levelCode,levelCode,6));
			    }else{
					var parentNode=$("#tree").data("treeview").getNode(0);
					var levelCode = "000000";
					if (parentNode) {
						var brothers = $("#tree").data("treeview").getSiblings(0);
						levelCode = brothers[brothers.length - 1].levelCode;
					}
					$("input[name='levelCode']").val(getNextCode("", levelCode, 6));
			    }
			}

			//填充form
			function fillDictForm(node){
				ajaxPost(ctx+"/menu/getSysMenuById?id="+node.id,null,function(data){
					//回填数据
					$("#parentId").val(data.parentId);
					$("#parentName").val(data.parentName);
					$("#name").val(data.name);
					$("#code").val(data.code);
					$("#url").val(data.url);
					$("#levelCode").val(data.levelcode);
					$("input[name='functype']").each(function() {  
					    if(this.value == data.functype) {  
					        //遍历radio组，使用iCheck设置选中项  
					        $(this).iCheck('check');  
					    }
					});  
					$("input[name='deleted']").each(function() {  
					    if(this.value == data.deleted) {  
					        //遍历radio组，使用iCheck设置选中项  
					        $(this).iCheck('check');  
					    }
					});
					$("#remark").val(data.remark);
					fillBackIconName(data.icon);
				})
			}

			//设置form为只读
			function formReadonly(){
				//所有文本框只读
				$("input[name],textarea[name]").attr("readonly","readonly");
				//隐藏取消、保存按钮
				$("#function-form .box-footer").hide();
				//还原新增、编辑、删除按钮样式
				$(".box-header button").removeClass("btn-primary").addClass("btn-default");
				//选择图标按钮只读
				$("#selectIcon").addClass("disabled");
				//还原校验框
				if($("function-form").data('bootstrapValidator'))
					$("function-form").data('bootstrapValidator').resetForm();
			}

			function formWritable(action){
				$("input[name],textarea[name]").removeAttr("readonly");
				$("#function-form .box-footer").show();
				$(".box-header button").removeClass("btn-primary").addClass("btn-default");
				$("#selectIcon").removeClass("disabled");
				if(action)
					$(".box-header button[data-btn-type='"+action+"']").removeClass("btn-default").addClass("btn-primary");
			}

			//回填图标
			function fillBackIconName(icon_name){
				$("#icon").val(icon_name);
				$("#icon_i").removeClass().addClass("form-control-feedback").addClass(icon_name);
			}
			
			function formReset() {
				                 $(':input', '#function-form').not(':button, :submit, :reset, :hidden,:radio') // 去除不需要重置的input类型
				                    .val('')
				                    .removeAttr('checked')
				                    .removeAttr('selected');
				           }

		</script>
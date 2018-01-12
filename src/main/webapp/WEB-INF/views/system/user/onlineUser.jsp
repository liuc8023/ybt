<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<jsp:include page="/common.jsp" flush="true" />
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		在线用户管理 <small>列表</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="${basePath}"><i class="fa fa-dashboard"></i> 首页</a></li>
		<li><a href="#">系统管理</a></li>
		<li class="active">在线用户管理</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<div>
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="form-group">
					<button id="btnDel" type="button" class="btn btn-danger "
						onclick="kickout()">
						<i class="fa fa-remove"></i>&nbsp;&nbsp;<span class="bold">强制踢出</span>
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



<script type="text/javascript">
var grid_selector = "#table_list";
var ctx="${ctx}";
$(document).ready(function() {
	pageInit();
});
function pageInit(){
    var jqGrid = $("#table_list");  
    jqGrid.jqGrid({  
        caption: "在线用户管理",  
        url : ctx+'/user/onlineUsers',
        mtype: "GET",  
        styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
        datatype: "json",  
        colNames : [ '会话Id', '用户名', '主机地址', '最后访问时间' ],
		colModel : [{
			name : 'sessionId',
			index : 'sessionId',
			align:'center',
			key : true//是否是主建，如果为true，就会按这个字段删除
		}, {
			name : 'nickname',
			index : 'nickname',
			align:'center',
		}, {
			name : 'host',
			index : 'host',
			align:'center',
		}, {
			name : 'lastLoginTime',
			index : 'lastLoginTime',
			align:'center',
			formatter : formatDate,
		} ],
        viewrecords: true,  
        multiselect: true,  
        rownumbers: true,  
        autowidth: true,  
        height: 240,
        width:$('.jqGrid_wrapper').width(),  
        autowidth: false,  
        shrinkToFit: true,  
        rowNum: 10,  
        rownumbers: true, // 显示行号  
        rownumWidth: 35, // the width of the row numbers columns  
        pager: "#pager_list",//分页控件的id  
        rowList : [ 10, 20, 30 ],// 用于改变显示行数的下拉列表框的元素数组。
		altRows : true,// 设置为交替行表格,默认为false
        subGrid: false,//是否启用子表格  
        jsonReader : {  
		    root: "list",   // json中代表实际模型数据的入口  
		    page: "pageNum",   // json中代表当前页码的数据  
		    total: "pages", // json中代表页码总数的数据  
		    records: "total", // json中代表数据行总数的数据  
		    repeatitems: true // 如果设为false，则jqGrid在解析json时，会根据name来搜索对应的数据元素（即可以json中元素可以不按顺序）；而所使用的name是来自于colModel中的name设定。  
		}
    }); 
    //表格宽度自适应
	   $(function(){
	      $(window).resize(function(){
	         $("#table_list").setGridWidth($('.jqGrid_wrapper').width());
	      });
	   });
    
}

//强制踢出
function kickout(){
	var cells = $(grid_selector).jqGrid("getGridParam","selarrrow");
	   if(cells.length>0){
		   var ids = "";  
        for(var i=0;i<cells.length;i++){  
            //sessionId是colModel中的一属性  
            var sessionId = jQuery(grid_selector).jqGrid('getCell',cells[i],'sessionId');  
            if(ids != ""){  
                ids = ids + "," + sessionId;  
            }else{  
                ids = sessionId;  
            }  
        }  
        var params ={"ids":ids};
		   top.layer.confirm("确定强制踢出选中的用户吗？",{
			   skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
    		   ,closeBtn: 1    // 是否显示关闭按钮
    		   , btn: ['确定','取消'] //按钮
    		   ,anim: 6 //动画类型
    		   ,icon:3
    		   ,yes:function(){
    			 	$.ajax({
					   url:ctx+'/user/kickout',
					   type: "POST",
			           contentType:'application/json;charset=UTF-8',
		               data:JSON.stringify(params),
		               dataType:'json',
		               async: false, //请求是否异步，默认为异步，这也是ajax重要特性
					   success:function(data){
						   if(data.flag){
				        		top.layer.alert('强制踢出用户成功!', {
				        			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
				        			,closeBtn: 1    // 是否显示关闭按钮
				        		    ,btn: ['确定'] //按钮
				        		    ,anim: 6 //动画类型
				        		    ,icon:6
				        		    ,yes:function(){
				        		    	top.layer.closeAll();//点击确认按钮之后关闭所有的弹出框
				        		    	reloadGrid();
					            	}
				        		  });		
				        	}else {
							   top.layer.alert('强制踢出用户失败!', {
						   			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
						   		    ,closeBtn: 0
						   		    ,anim: 6 //动画类型
						   		    ,icon:7
						   		  });
						   }
					   }	   
				   });
        		}
			   ,btn2: function(index, layero){
				   top.layer.closeAll();//点击取消按钮之后关闭所有的弹出框
				   reloadGrid();
				}
		   });
	   }else{
		   top.layer.alert('请选中一行!', {
			skin: 'layui-layer-molv' //样式类名,	墨绿深蓝风
			,title:'提示'
		    ,closeBtn: 0
		    ,anim: 6 //动画类型
		    ,icon:7
		  });
	   }

}

</script>

</body>
</html>


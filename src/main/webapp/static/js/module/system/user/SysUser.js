$(function() {
	init();
});


function init() {
    var jqGrid = $("#table_list");  
    jqGrid.jqGrid({  
        caption: "用户管理",  
        url : ctx+'/user/getUserList',
        mtype: "GET",  
        styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
        datatype: "json",  
        colNames : [ '主键', '用户名称', '邮箱', '创建时间','最后登录时间', '是否有效'],
		colModel : [ {
			name : 'id',
			index : 'id',
			align:'center',
			key : true,
			hidden : true
		}, {
			name : 'nickname',
			index : 'nickname',
			align:'center',
		}, {
			name : 'email',
			index : 'email',
			align:'center',
		}, {
			name : 'createTime',
			index : 'createTime',
			align:'center',
			formatter : formatDate,
		},{
			name : 'lastLoginTime',
			index : 'lastLoginTime',
			align:'center',
			formatter : formatDate,
		}, {
			name : 'status',
			index : 'status',
			align:'center',
			formatter:function(cellValue){
				if(cellValue=='1'){
					return "<span class='label label-success arrowed'>有效</span>";
				}else if(cellValue=='0'){
					return "<span class='label label-danger arrowed-in'>禁止登录</span>";
				}
			},
		} ],
		 viewrecords: true,  
	        multiselect: true,  
	        rownumbers: true,  
	        autowidth: true,  
	        width:$('.jqGrid_wrapper').width(),  
	        height: 240,
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

function addfunc(){
	window.location.href=ctx+'/user/turnToAddUser'; 
	/*var layerWidth=$(window).width()*0.9 > 600?600:$(window).width()*0.9;
    var layerHeigth=$(window).height()*0.9 > 550?550:$(window).height()*0.9;
    top.layer.open({
    	type: 2,
    	shadeClose: false,//不允许点击遮罩关闭
	    shade: 0.3,
	    maxmin: true, //开启最大化最小化按钮
	    skin: 'layui-layer-rim', //加上边框：layui-layer-rim；深蓝：layui-layer-lan；墨绿：layui-layer-molv 
        content: ctx+'/user/turnToAddUser',
        area: [layerWidth+'px', layerHeigth+'px'],
        title:'新增用户',
        btn:["提  交","取 消"],
        yes:function(index, layero){
        	var data = $(layero).find("iframe")[0].contentWindow.savefunc();
        },
        closeBtn: 2,
        end: function () {
            location.reload();
        }
    });*/
}
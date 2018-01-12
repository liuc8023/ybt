$(function() {
	init();
});

//保存选择记录的数组
var selectIds = new Array();
function init() {
    var jqGrid = $("#table_list");  
    jqGrid.jqGrid({  
        caption: "收件人",  
        url : ctx+'/user/getUserList',
        mtype: "GET",  
        styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
        datatype: "json",  
        colNames : [ '主键', '用户名称', '邮箱'],
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
		}],
		 viewrecords: true,  
	        multiselect: true,  
	        rownumbers: true,  
	        autowidth: true,  
	        width:$('.jqGrid_wrapper').width(),  
	        height: 240,
	        autowidth: false,  
	        shrinkToFit: true,  
	        rowNum: 5,  
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
			},
			 loadComplete:function(xhr){
				 setCheckboxState();//解决翻页时数据选中丢失问题
			   }
	    }); 
    //表格宽度自适应
	   $(function(){
	      $(window).resize(function(){
	         $("#table_list").setGridWidth($('.jqGrid_wrapper').width());
	      });
	   }); 
}

function setCheckboxState() {
    var selectUserIds = $("#selectedUserId").val();
    if (selectUserIds) {
        var userIdArr = selectUserIds.split(",");
        //选中增加的用户
        $.each(userIdArr, function (index, userId) {
        	var ids =  $("#table_list").jqGrid('getDataIDs');
            if (ids.length > 0) {
            	$("#table_list").jqGrid('setSelection',userId);
            }
        });
    }
}

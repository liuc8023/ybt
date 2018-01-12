$(function() {
	init();
	
	  $("#table_list").on("click", ".mark_data", function(){  
		  var url = $(this).data("url");
		  loadPage(url,"#contentBody");
		    $(".content-header small").text("查看消息");
	    }); 
});
function init() {
    var jqGrid = $("#table_list");  
    jqGrid.jqGrid({  
        url : ctx+'/message/getMessageSendList',
        mtype: "GET",  
        styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
        datatype: "json",  
        colNames : [ '主键', '主题', '发送时间','类型','状态','标记','附件'],
		colModel : [ {
			name : 'id',
			index : 'id',
			align:'center',
			key : true,
			hidden : true
		}, {
			name : 'sendsubject',
			index : 'sendsubject',
			align:'center',
			formatter: editLink
		}, {
			name : 'sendtime',
			index : 'sendtime',
			align:'center',
			formatter : formatDate,
		}, {
			name : 'messagetype',
			index : 'messagetype',
			align:'center',
			formatter:function(cellValue){
				if (!cellValue)
			        return;
			    var ret = cellValue.indexOf("0") > -1 ? "&nbsp;<i class='fa fa-tv text-danger'></i>&nbsp;" : "";
			    ret += cellValue.indexOf("1") > -1 ? "&nbsp;<i class='fa fa-envelope-o text-info'></i>&nbsp;" : "";
			    ret += cellValue.indexOf("2") > -1 ? "&nbsp;<i class='fa fa-mobile txt-success fa-lg'></i>&nbsp;" : "";
			    return ret;
			},
		}, {
			name : 'messagestatus',
			index : 'messagestatus',
			align:'center',
			formatter:function(cellValue){
				 if (cellValue == 0) {
				        return '<span class="label label-warning">草稿</span>'
				    } else if (cellValue == 4) {
				        return '<span class="label label-success">已发送</span>';
				    }
				    return cellValue;
			},
		}, {
			name : 'messageflag',
			index : 'messageflag',
			align:'center',
			formatter:function(cellValue){
				if (cellValue == 1) //重要消息
			        return '<i class="fa fa-star text-yellow"></i>';
			    else
			        return '<i class="fa fa-star-o text-yellow"></i>';
			},
		}, {
			name : 'fileids',
			index : 'fileids',
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
			}
	    }); 
    //表格宽度自适应
	   $(function(){
	      $(window).resize(function(){
	         $("#table_list").setGridWidth($('.jqGrid_wrapper').width());
	      });
	   }); 
}

function editLink(cellValue, options, rowdata, action)
{
	var url = ctx+"/message/detail?id="+rowdata.id;
    return "<a href='#' data-url="+url+" class='mark_data'>"+rowdata.sendsubject+"</a>";
}



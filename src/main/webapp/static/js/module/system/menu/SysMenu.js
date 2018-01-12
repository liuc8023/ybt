$(function() {
	init();
});


function init() {
	 var jqGrid = $("#table_list");  
	    jqGrid.jqGrid({  
	        caption: "菜单管理",  
	        url : ctx+'/menu/getMenuList',
	        mtype: "GET",  
	        styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
	        datatype: "json",  
	        colNames : [ '主键','层级编码', 'url描述','url地址' , '菜单图标','状态','菜单类型'],
			colModel : [ {
				name : 'id',
				index : 'id',
				align:'center',
				key : true,
				hidden : true
			},{
				name : 'levelcode',
				index : 'levelcode',
				align:'center',
			},{
				name : 'name',
				index : 'name',
				align:'center',
			},{
				name : 'url',
				index : 'url',
				align:'center',
			},{
				name : 'icon',
				index : 'icon',
				align:'center',
				editable : true,
				formatter:function(cellValue){
					var fa=new RegExp('fa');
					var glyphicon = new RegExp('glyphicon');
					if(fa.test(cellValue)){
						return "<span class='fa fa-fw"+cellValue+"'></span>";
					}else if(glyphicon.test(cellValue)){
						return "<span class='"+cellValue+"'></span>";
					}else{
						return "<span class='"+cellValue+"'></span>";
					}
					
				},
			},{
				name : 'deleted',
				index : 'deleted',
				align:'center',
				formatter:function(cellValue){
					if(cellValue=='0'){
						return "<span class='label label-success arrowed'>有效</span>";
					}else if(cellValue=='1'){
						return "<span class='label label-danger arrowed-in'>无效</span>";
					}
				}
			}, {
				name : 'functype',
				index : 'functype',
				align:'center',
				formatter:function(cellValue){
					if(cellValue=='0'){
						return "<span class='label label-success arrowed'>目录</span>";
					}else if(cellValue=='1'){
						return "<span class='label label-danger arrowed-in'>功能</span>";
					}
					else if(cellValue=='2'){
						return "<span class='label label-danger arrowed-in'>按钮</span>";
					}
				}
			}],
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

function addfunc(){
	window.location.href=ctx+'/menu/turnToAddMenu'; 
}
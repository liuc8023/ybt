<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<jsp:include page="/common.jsp" flush="true" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/dist/css/AdminLTE.min.css">
<script src="${ctx}/static/adminlte/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/js/module/toolkit/message/message_group_user.js"></script>
<style>
#groupDiv ul.nav li a span {
	padding-left: 10px;
}
</style>
<div class="modal-body" data-margin="top">
	<div class="row">
		<div class="col-md-3">
			<div class="box box-primary">
				<div class="box-header with-border">
					<div class="has-feedback">
						<input name="name" class="form-control" id="groupSelect"
							placeholder="请输入群组名"> <span
							class="glyphicon glyphicon-search form-control-feedback"></span>
					</div>
				</div>
				<div class="box-body no-padding" id="groupDiv">
					<ul class="nav nav-pills nav-stacked">
						<c:forEach items="${groups}" var="row" varStatus="status">
							<li id="${row.id}"><a href="#"> <input type="checkbox"
									data-flag="icheck"><span>${row.name}</span> <c:choose>
										<c:when test="${row.userNum !=0}">
											<span class="label label-info pull-right">${row.userNum}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-info pull-right">0</span>
										</c:otherwise>
									</c:choose>
							</a></li>
						</c:forEach>
						<c:if test="${empty groups}">
							<li id="emptyli"><a href="#"> <span>未配置群组</span></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="box box-primary">
				<!--隐藏域保存选中的用户-->
				<input type="hidden" name="selectedUserId" id="selectedUserId"
					style="width: 100%" /> <input type="hidden" name="receiverUsers"
					id="receiverUsers" style="width: 100%" />
				<div class="dataTables_filter" id="searchDiv_receiver_select">
					<input placeholder="请输入姓名" name="name" class="form-control"
						type="search" />
					<div class="btn-group">
						<button type="button" class="btn btn-default"
							data-btn-type="search">查询</button>
						<button type="button" class="btn btn-primary"
							data-btn-type="select">选择</button>
					</div>
				</div>
				<div class="box-body">
					<div class="jqGrid_wrapper">
						<table id="table_list"></table>
						<div id="pager_list"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    $(function () {
         $("[data-flag='icheck']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue'
        });


        //群组筛选框，选中
       // alert($("#groupDiv ul li a input").length);
        $("#groupDiv ul li a input").each(function () {
            $(this).on("ifChanged", function () {
                var isChecked = $(this).is(":checked");
                var groupId = $(this).parents("li").attr("id");
                var userArr = [];
                ajaxPost(ctx + "/message/receiver/users/" + groupId, null, function (data) {
                    //alert(data.length);
                    $.each(data, function (index, curValue) {
                        var selectedUserIds = $("#selectedUserId").val();
                        userArr = getSelectedUserArr(selectedUserIds, curValue.userId, isChecked);
                        if(""==userArr || null==userArr){
                        	$("#table_list").jqGrid("setSelection", curValue.userId,false);//取消选中
                        }else{
                        	var ids =  $("#table_list").jqGrid('getDataIDs');
                            if (ids.length > 0) {
                            	$("#table_list").jqGrid('setSelection',curValue.userId);//设置选中
                            }
                        }
                        $("#selectedUserId").val(userArr.join(","));
                    });
                });
            });
        });

        //数据回填
        //setTimeout(function(){backfillReceiver()},500);
        backfillReceiver();

        //选择
/*         $("button[data-btn-type='select']").click(function () {
            submitSelect();
        }); */

    });
    
    function savefunc(){
    	  var selectedUserIds = $("#selectedUserId").val();
          if (!selectedUserIds) {
              top.layer.alert('请至少选择一个接收人', {
            	  icon: 5,
            	  skin: 'layui-layer-molv', //样式类名  自定义样式
            	  anim: 1, //动画类型
            	  title: "警告"
            	  });
              return;
          }
          var groupIds = $("#groupDiv ul li a input:checked").map(function () {
              return $(this).parents("li").attr("id");
          }).get().join(",");

          //没有选择群组，且用户数量选择大于5人时候，建议建立群组
          var userArr = selectedUserIds.split(",");
          if (!groupIds) {
              addGroupOrSelectUser(userArr);
          } else {
              //选择了群组，校验是否选择的用户和群组里的用户是完全一样
              ajaxPost(ctx + "/message/receiver/group/exist",
                      {"groupIds": groupIds, "userIds": $("#selectedUserId").val()},
                      function (data) {
                          //数据不一致，建立群组
                          if (!data.success) {
                              addGroupOrSelectUser(userArr);
                          } else {
                              setGroupId(groupIds);
                          }
                      });
          }
          return $("#receiverUsers").val();
    }

    //回填选中
    function backfillReceiver() {
        var receiverType = $("#receiverType").val();
        var receiverIds = $("#receiverIds").val();
        if (!receiverIds || !receiverType) {
            return false;
        }
        if (receiverType == "0") {
            $("#groupDiv ul li a input").each(function () {
                var groupId = $(this).parents("li").attr("id");
                if (receiverIds.indexOf(groupId) > -1) {
                    $(this).iCheck("check");
                }
            })
        } else {
            $("#selectedUserId").val(receiverIds);
        }
    }


    //根据用户数量决定是否建群还是直接选择接收人
    function addGroupOrSelectUser(userArr) {
        if (userArr.length > 5) {
            modals.confirm({
                text: "是否为选择的" + userArr.length + "个用户建立群组？",
                callback: function () {
                    openGroupAddWin();
                    modals.hideWin("receiverWin");
                },
                cancel_call: function () {
                    setReceiverUserIds();
                    modals.hideWin("receiverWin");
                }
            })
        } else {
            //小于5不弹出提示，不建立群组
            setReceiverUserIds();
            modals.hideWin("receiverWin");
        }
    }

    //打开建组窗口
    function openGroupAddWin() {
        modals.openWin({
            winId: "groupWin",
            width: "500px",
            url: basePath + "/message/receiver/group/edit",
            title: '新建群组'
        });
    }

    //创建群组后返回的组Id
    function setGroupId(groupId) {
        $("#groupId").val(groupId);
        $("#receiverType").val("0");
        $("#receiverIds").val(groupId);
        ajaxPost(ctx + "/message/receiver/user/group", {"groupIds": groupId}, function (map) {
            $("#receiverUsers").val(map.name);
        })
    }
    //不建立群组，直接返回接收人
    function setReceiverUserIds() {
        $("#groupId").val("");
        $("#receiverType").val("1");
        $("#receiverIds").val($("#selectedUserId").val());
        //显示接收人姓名
        ajaxPost(ctx + "/message/receiver/user/names", {userIds: $("#selectedUserId").val()}, function (map) {
            $("#receiverUsers").val(map.name);
        });
    }

    function getSelectedUserArr(selectedUserIds, curValue, isChecked) {
        var userArr = [];
        if (selectedUserIds)
            userArr = selectedUserIds.split(",");
        if (isChecked) {
            var flag = true;
            for (var i = 0; i < userArr.length; i++) {
                if (userArr[i] == curValue) {
                    flag = false;
                    break;
                }
            }
            if (flag)
                userArr.push(curValue);
        } else {
            for (var i = 0; i < userArr.length; i++) {
                var userIdValue = userArr[i];
                if (userIdValue == curValue) {
                    userArr.splice(i, 1);
                    break;
                }
            }
        }
        return userArr;
    }

</script>

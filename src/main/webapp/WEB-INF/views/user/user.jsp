<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<html>
<head>
<script type="text/javascript">
	var tempPage = "";
	$(function() {
		$("#pagination").pagination('${userCount}', {
			first_text : "首页",
			prev_text : "上一页",
			next_text : "下一页",
			last_text : "尾页",
			ellipse_text : " ",
			num_edge_entries : 0,
			num_display_entries : 5,
			items_per_page : 10,
			callback : function(page_id, jq) {
				tempPage = page_id;
				$.ajax({
					type : "POST",
					url : "${ctx}/form/user/userList?pageIndex=" + page_id,
					data : $("#search_form").serialize(),
					success : function(msg) {
						$("#manger").html(msg);
					}
				});
			}
		});
	})

	function addFunc() {
		var myart = {
			title : "添加用户信息",
			width : '530px',
			height : '300px',
			lock : true,
			init : function() {
			},
			ok : function() {
				var iframe = this.iframe.contentWindow;
				var flag = iframe.addSubmit();
				if (flag == 1) {
					$
							.ajax({
								type : "POST",
								url : "${ctx}/form/user/userList?pageIndex="
										+ tempPage,
								data : $('#search_form').serialize(),
								dataType : "text",
								success : function(msg) {
									$("#manger").html(msg);
								}
							});
					this.close();
					return true;
				} else {
					alert(111);
					return false;
				}
			},
			cancel : true
		}
		artDialog.open("${ctx}/form/user/toAdd", myart);
	}

	function deleteFunc() {
		if ($('[name=ids]:checked').length == 0) {
			alert("请至少选择一条记录进行删除操作");
			return;
		}
		if (confirm("确认删除？")) {
			$.ajax({
				type : "POST",
				url : "${ctx}/form/user/delete",
				data : $('#form1').serialize(),
				dataType : "text",
				success : function(msg) {
					if (msg == 'yes') {
						alert("删除成功")
					} else {
						alert("删除失败")
					}
					window.location = "${ctx}/user/user";
				}
			})
		}
	}

	function updateStatus(id) {
		if (confirm("确认更改状态？")) {
			$.ajax({
				type : "POST",
				url : "${ctx}/form/user/updateStatus?id=" + id,
				dataType : "text",
				success : function(msg) {
					if (msg == 'yes') {
						alert("更改成功")
					} else {
						alert("更改失败")
					}
				}
			})
		}
	}
	//修改用户信息
	function updateFunc(id) {
		var myart = {
			title : "修改用户信息",
			width : '520px',
			height : '390px',
			lock : true,
			init : function() {
			},
			ok : function() {
				var iframe = this.iframe.contentWindow;
				var flag = iframe.updateSubmit();
				if (flag == 1) {
					$
							.ajax({
								type : "POST",
								url : "${ctx}/form/user/userList?pageIndex="
										+ tempPage,
								data : $('#search_form').serialize(),
								dataType : "text",
								success : function(msg) {
									$("#manger").html(msg);
								}
							});
					this.close();
					return true;
				} else {
					return false;
				}
			},
			cancel : true
		}
		artDialog.open("${ctx}/form/user/toUpdate?id=" + id, myart);
	}
</script>

</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">用户管理</a></li>
		</ul>
	</div>

	<div class="container-fluid">
		<form class="form-inline " id="search_form" action="${ctx}/user/user"
			method="post">
			<button type="button" class="btn btn-default"
				onclick="javascript:addFunc()">
				<span class="glyphicon glyphicon-plus-sign"></span>添加
			</button>
			<button type="button" class="btn btn-default"
				onclick="javascript:deleteFunc()">
				<span class="glyphicon glyphicon-minus-sign"></span>删除
			</button>

			<div class="form-group">
				<label for="searchText">模糊查询:</label> <input type="text"
					class="form-control" id="searchText" placeholder="search"
					name="searchText" value="${page.searchText }">
			</div>

			<button onclick="search();" class="btn btn-default">查询</button>
		</form>
		<p>
		<div align="center">
			<div id='manger'>
				<span class="glyphicon glyphicon-refresh">正在加载</span>
			</div>
			<div id="pagination" class="pagination"></div>
		</div>
	</div>
</body>

</html>
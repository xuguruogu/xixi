<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div id="header" class="row">
	<div>
		<h1>
			灵犀后台管理系统<small>--Just Do It</small>
		</h1>
	</div>


	<div class="btn-group pull-right">
		<a class="btn dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" href="#"><span class="caret"></span>
		</a>

		<ul class="dropdown-menu">
			<li><a href="${ctx}/api">APIs</a></li>
			<li><a href="${ctx}/profile">Edit Profile</a></li>
			<li id="logout"><a href="javascript:void(0);">Logout</a></li>
		</ul>
	</div>
</div>


<script>
	$(document).ready(function() {
		$("#logout").click(function() {
			if (confirm("确认退出？")) {
				$.ajax({
					type : "POST",
					url : "${ctx}/user/exit",
					dataType : "text",
					success : function(msg) {
						if (msg == 'yes') {
							alert("退出成功")
							window.parent.location.href = "${ctx}/login.jsp";
						}
					}
				})
			}
		});
	});
</script>
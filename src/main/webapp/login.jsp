<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>

</head>

<body>

	<div class="login-box text-center container-fluid">
		<div class="login-title text-center">
			<h1>
				登录
			</h1>
		</div>
		<form id="loginForm" method="post" class="form login-content">

			<div class="form-group">
				<div class="col-xs-12">
					<div class="input-group">
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-user"></span></span><input type="text"
							id="username" name="username" class="form-control required"
							placeholder="用户名">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-xs-12">
					<div class="input-group">
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-lock"></span></span> <input type="text"
							id="password" name="password" class="form-control required"
							placeholder="密码">
					</div>
				</div>
			</div>
			<div class="form-group form-actions">
				<div class="col-xs-4 col-xs-offset-4 ">
					<button type="submit" class="btn btn-sm btn-info">
						<span class="glyphicon glyphicon-off"></span> 登录
					</button>
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<small>忘记密码？</small> <a href="javascript:alert('联系管理员')"><small>找回</small></a>
					</p>
				</div>
				<div class="col-xs-6 link">
					<p class="text-center remove-margin">
						<small>还没注册?</small> <a href="javascript:alert('联系管理员')"><small>注册</small></a>
					</p>
				</div>
			</div>
		</form>
	</div>

	<script>
		$(document).ready(function() {
			$("#loginForm").validate({
				submitHandler : function(form) {

					var uname = $('#username').val();

					$.ajax({
						type : "POST",
						url : "${ctx}/user/login",
						data : $('#loginForm').serialize(),
						success : function(msg) {
							if (msg == 'no') {
								$("#alert-msg").text("用户名或密码错误").show();
								$("#password").val("");
							} else if (msg == 'yes') {
								window.location = "${ctx}/user/main";
							} else if (msg == 'stop') {
								$("#alert-msg").text("帐号已被禁用").show();
							} else {
								$("#alert-msg").text("登录异常").show();
							}
						}
					});
				}
			});

		});
	</script>

</body>

</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/Validform_v5.3.2_min.js"></script>
	<script src="${bp}/resource/js/jquery.autocomplete.js" type="text/javascript"></script>
	<link href="${bp}/resource/css/jquery.autocomplete.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript">
	
	//添加用户信息
	function addSubmit(){
		var username = $("#username").val();
		var password = $("#password").val();
		var realname = $("#realname").val();
		var email = $("#email").val();
		var tel = $("#tel").val();
		var licensePlateNumber = $("#licensePlateNumber").val();
		var model = $("#model").val();
		if(username==""||password==""||email==""||tel==""||realname==""){
			alert("填写有误，请检查");
			return;
		}
		if (!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
			alert("邮箱格式不正确，请检查");
			return;
		} 
		var flag= 2;
		$.ajax( {
			type : "POST",
			async : false,
			dataType: "text",
			url : "${bp}/user/add",
			data : $("#add_From").serialize(),
			success : function(msg) {
				if(msg=='yes'){
					alert('添加成功！');
					flag = 1;
				}else if(msg=='no'){
					alert('用户名已存在！请检查');
					flag = 2;
				}else{
					alert('异常'+error);
					flag = 2;
				}
			}
		});
		return flag;
   }
</script>
  </head>
  
  <body>
    	<form id="add_From" action="" class="am-form" data-am-validator>
    <div>
    	<div align="center">
	    	<h1><span>添加用户信息</span></h1>
	    	<hr/>
    	</div>
    </div>
    <div>
    	<div align="center">
    		<table style="border: 1px solid #999;text-align: center" width="500px">
    			<tr>
    				<td>请输入用户名：</td>
    				<td><input type="text" id="username" name="username"/></td>
    			</tr>
    			<tr>
    				<td>请输入密码：</td>
    				<td><input type="password" id="password" name="password"/></td>
    			</tr>
    			<tr>
    				<td>请输入真实姓名：</td>
    				<td><input type="text" id="realname" name="realname"/></td>
    			</tr>
    			<tr>
    				<td>请输入邮箱：</td>
    				<td><input type="text" id="email" name="email"/></td>
    			</tr>
    			<tr>
    				<td>请输入联系电话：</td>
    				<td><input type="text" id="tel" name="tel"/></td>
    			</tr>
    			<tr>
    				<td>请选择角色：</td>
    				<td>
						<select name="roleID">
							<c:forEach items="${roleList}" var="role">
								<option value="${role.id }">${role.roleName }</option>
							</c:forEach>
						</select>
					</td>
    			</tr>
    			<tr>
    				<td>请选择状态：</td>
    				<td>
    					<input type="radio" name="status" value="0" checked="checked"/>启用&nbsp;&nbsp;&nbsp;
    					<input type="radio" name="status" value="1"/>停用
    				</td>
    			</tr>
    		</table>
    	</div>
    </div>
    	</form>
  </body>
</html>

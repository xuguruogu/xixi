<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>修改用户</title>
	<link href="${bp}/resource/css/amazeui.min.css" rel="stylesheet" type="text/css">
	<script src="${bp}/resource/js/amazeui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/Validform_v5.3.2_min.js"></script>
	<script src="${bp}/resource/js/jquery.autocomplete.js" type="text/javascript"></script>
	<link href="${bp}/resource/css/jquery.autocomplete.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript">
	
	//修改用户
	function updateSubmit(){
		var flag= 2;
		var err = true;
		var passwordmsg = $("#pwd").val();
		var realnamemsg = $("#realName").val();
		var emailmsg = $("#email").val();
		var telmsg = $("#tel").val();
		if (!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
			alert("邮箱格式不正确，请检查");
			return;
		} 
		if(passwordmsg==""||realnamemsg==""||telmsg==""||emailmsg==""){
			err = false;
			alert("填写有误，请检查");
			return;
		}
				$.ajax( {
					type : "POST",
					async : false,
					dataType: "text",
					url : "${bp}/user/update",
					data : $("#update_From").serialize(),
					success : function(msg) {
						   if(msg=='yes'){
								alert('修改成功。');
								flag = 1;
							}else{
								alert('修改失败。');
								flag = 2;
							}
					}
				});
				return flag;
   }
</script>
  </head>
  
  <body>	
	  <form id="update_From" action="" class="am-form" data-am-validator>
		  <fieldset>
		   <legend>修改用户信息</legend>
		    <div class="am-form-group">
		    <input type="hidden" name="id" value="${user.id }" />
		    <input type="hidden" name="status" value="${user.status }" />
		    <input type="hidden" name="SA" value="${user.SA }" />
		    <input type="hidden" name="username" value="${user.username }" />
		      <label for="doc-vld-name-2">用户名：</label>
		      ${user.username }
		    </div>
			<div class="am-form-group">
		      <label for="doc-vld-pwd-1">密码：</label>
		      <input value="${user.password }" name="password" size="2px" type="password" id="pwd" placeholder="输入密码（至少 3 个字符）" minlength="3" required/>
		    </div>
		
		    <div class="am-form-group">
		      <label for="doc-vld-pwd-2">真实姓名：</label>
		      <input value="${user.realname}" name="realname" type="text" id="realname" placeholder="输入姓名"  required/>
		    </div>
		    <div class="am-form-group">
		      <label for="doc-vld-pwd-2">邮箱：</label>
		      <input value="${user.email}" name="email" type="text" id="email" placeholder="输入邮箱"  required/>
		    </div>
		    <div class="am-form-group">
		      <label>联系电话：</label>
		      <input value="${user.tel}" name="tel" type="text" id="tel" placeholder="输入电话"  required/>
		    </div>
		    <c:if test="${user.SA==false}">
			    <div class="am-form-group">
			      <label>角色：</label>
				  <select name="roleID">
				  	<c:forEach items="${roleList}" var="role">
				  		<c:if test="${role.id==user.roleID}">
							<option value="${role.id }">
				  			${role.roleName }
						  	</option>
				  		</c:if>
				  	</c:forEach>
				  	<c:forEach items="${roleList}" var="role">
				  		<c:if test="${role.id!=user.roleID}">
							<option value="${role.id }">
				  			${role.roleName }
						  	</option>
				  		</c:if>
				  	</c:forEach>
				  </select>
			    </div>
		    </c:if>
		  </fieldset>
	</form>
  </body>
</html>

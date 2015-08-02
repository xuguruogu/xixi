<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登录犀犀论坛后台管理系统</title>
<link href="${bp}/resource/css/style2.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${bp}/resource/js/jquery.js"></script>
<script language="JavaScript" src="${bp}/resource/js/jquery.cookie.js"></script>
<script language="javascript">

	$(function(){
		$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		  });
		  $(".loginbtn").click(function(){
				var uname = $('#username').val();
				$.cookie("username",uname,{ expires: 365 });
				if($('#rememberPwd').is(":checked")){
					var pwd = $('#password').val();
					$.cookie("password",pwd,{ expires: 365 });
				}else{
					$.cookie("password","",{ expires: 365 });
				};
				 $.ajax({
		             type: "POST",
		             url: "${bp}/user/login",
		             data:$('#login_form').serialize(),
		             success: function(msg){
		              if(msg=='no'){
		                 alert( "用户名或密码错误!" );
		                 $(".loginpwd").val("");
		              }else if(msg=='yes'){
		                 window.location = "${bp}/user/main";
		              }else if(msg=='stop'){
						alert("帐号已被禁用");
		              }else{
						alert("登录异常");
			          }
		          }
		        });
			  });
		  var username = $.cookie("username");
			$("#username").val(username);
			var password = $.cookie("password");
			if(password!=null&&password!=""){
				$("#password").val(password);
				$("#rememberPwd").attr("checked","checked");
			}
		
});  
</script> 
</head>
<body style="background-color:#1c77ac; background-image:url(resource/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


<div class="logintop">    
    <span>犀犀后台管理系统</span>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox">
    <form id="login_form">
    <ul>
	    <li><input id="username" name="username" type="text" class="loginuser"/></li>
	    <li><input id="password" name="password" type="password" class="loginpwd"/></li>
	    <li><input name="" type="button" class="loginbtn" value="登录"/>
	    <input id="rememberPwd" name="" type="checkbox" value="yes"/>&nbsp;记住密码
	    </li>
	</ul>
    </form>
    </div>
    </div>
<%--    <div class="loginbm">版权所有  2013  <a href="http://www.uimaker.com">uimaker.com</a>  仅供学习交流，勿用于任何商业用途</div>--%>
</body>
</html>
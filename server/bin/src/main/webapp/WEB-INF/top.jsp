<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${bp }/resource/css/style2.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${bp }/resource/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
function exit(){
	if(confirm("确认退出？")){
		$.ajax({
		     type: "POST",
		     url: "${bp}/user/exit",
		 	 dataType : "text",
		     success: function(msg){
			     if(msg=='yes') {
				     alert("退出成功")
				 window.parent.location.href = "${bp}/login.jsp";
				 }
			}
		})
	}
}
</script>


</head>

<body style="background:url(${bp }/resource/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.html" target="_parent"><img src="${bp }/resource/images/loginlogo2.png" title="系统首页" /></a>
    </div>
        
            
    <div class="topright">    
    <ul>
    <li><a href="javascript:void(0);" onclick="exit()" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>${loginUser.realname }</span>
    </div>    
    
    </div>

</body>
</html>


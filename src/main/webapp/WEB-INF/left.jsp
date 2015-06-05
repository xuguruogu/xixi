<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>超级管理员界面</title>
<link href="${bp }/resource/css/style2.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${bp }/resource/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>==菜单==</div>
    <dl class="leftmenu">
    <c:forEach items="${rootList}" var="proot">
    <c:if test="${proot.menu.parentID==0}">
	    <dd>
	    <div class="title">
	    <span><img src="${bp }/resource/images/leftico02.png" /></span>${proot.menu.menuName }
	    </div>
	    <ul class="menuson">
	    	<c:forEach items="${rootList}" var="sroot">
	    		<c:if test="${sroot.menu.parentID==proot.menu.id}">
		        	<li><cite></cite><a href="${sroot.menu.url }" target="rightFrame">${sroot.menu.menuName }</a><i></i></li>
	    		</c:if>
	    	</c:forEach>
	        </ul>     
	    </dd> 
    </c:if>
    </c:forEach>
    </dl>
</body>
</html>

  </body>
</html>

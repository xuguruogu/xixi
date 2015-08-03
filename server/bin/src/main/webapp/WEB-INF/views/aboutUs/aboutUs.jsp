<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String bp = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'productList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${bp}/resource/css/style2.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/xheditor/xheditor.js"></script>
	<script type="text/javascript" src="${bp}/resource/xheditor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script type="text/javascript">
		function sub(){
			if(confirm("确认修改？")){
				$.ajax({
					type: 'POST',
					url: '${bp}/aboutUs/update',
					data: $("#form1").serialize(),
					success: function(msg){
						if(msg=='yes'){
							alert("修改成功");
						}else{
							alert("error");
						}
					}
				})
			}
		}
	</script>

  </head>
  
<body>
	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
		    <li><a href="javascript:;">首页</a></li>
		    <li><a href="javascript:;">关于我们</a></li>
		    <li><a href="javascript:;">编辑</a></li>
	    </ul>
    </div>
    <form id="form1" action="${bp }/aboutUs/update" method="post">
    <input type="hidden" name="id" value="${au.id }"/>
    <div align="center">
    	<h1 style="font-size: 24px;margin: 4px;">关于我们</h1>
    	<textarea id="content" name="content" class="xheditor" rows="23" cols="130">${au.content }</textarea>	
    	<br/>
    	<br/>
    	<input type="button" class="scbtn" value="确认修改" onclick="sub()"/>
    </div>
    </form>
</body>

</html>
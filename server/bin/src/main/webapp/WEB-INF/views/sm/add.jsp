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
    
    <title>添加推送消息</title>
    
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
	
	//添加
	function addSubmit(){
		var flag = 2;
		$.ajax( {
			type : "POST",
			async : false,
			dataType: "text",
			url : "${bp}/sm/add",
			data : $("#add_From").serialize(),
			success : function(msg) {
				if(msg=='yes'){
					alert('添加成功');
					flag = 1;
				}else{
					alert('添加失败，请检查');
					flag = 2;
				}
			}
		});
		return flag;
   	}
</script>
  </head>
  
  <body>
    	<form id="add_From" action="">
    <div>
    	<div align="center">
	    	<h1><span>添加推送消息</span></h1>
	    	<hr/>
    	</div>
    </div>
    <br/>
    <div>
    	<div align="center">
    		<table style="border: 1px solid #999;text-align: center" width="500px">
    			<tr>
    				<td>请输入消息内容：</td>
    				<td><input type="text" id="content" name="content" value="" style="width: 300px"/></td>
    			</tr>
    		</table>
    	</div>
    </div>
    	</form>
  </body>
</html>

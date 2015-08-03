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
    
    <title>添加功能模块</title>
    
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
	
	//添加功能模块
	function addSubmit(){
		var menuName = $("#menuName").val();
		var orderNum = $("#orderNum").val();
		if(menuName==''||orderNum==''){
			alert("填写有误，请检查");
			return;
		}
		
		var flag = 2;
		$.ajax( {
			type : "POST",
			async : false,
			dataType: "text",
			url : "${bp}/menu/add",
			data : $("#add_From").serialize(),
			success : function(msg) {
				if(msg=='yes'){
					alert('添加成功');
					flag = 1;
				}else if(msg=='no'){
					alert('该菜单名字已存在，请检查');
					flag = 2;
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
    	<form id="add_From" action="" class="am-form" data-am-validator>
    <div>
    	<div align="center">
	    	<h1><span>添加功能信息</span></h1>
	    	<hr/>
    	</div>
    </div>
    <div>
    	<div align="center">
    		<table style="border: 1px solid #999;text-align: center" width="500px">
    			<tr>
    				<td>请输入菜单名称：</td>
    				<td><input type="text" id="menuName" name="menuName" value=""/></td>
    			</tr>
    			<tr>
    				<td>请输入菜单url(顶层菜单不填)：</td>
    				<td><input type="text" id="url" name="url" value=""/></td>
    			</tr>
    			<tr>
    				<td>请选择父类菜单：</td>
    				<td>
    					<select name="parentID">
    						<option value="0">==顶层菜单==</option>
    						<c:forEach items="${menuList}" var="m">
	    						<option value="${m.id }">${m.menuName }</option>
    						</c:forEach>
    					</select>
    				</td>
    			</tr>
    			<tr>
    				<td>请输入菜单排序：</td>
    				<td><input type="text" id="orderNum" name="orderNum" value=""/></td>
    			</tr>
    			<tr>
    				<td>请输入备注信息：</td>
    				<td><input type="text" id="remarks" name="remarks" value=""/></td>
    			</tr>
    		</table>
    	</div>
    </div>
    	</form>
  </body>
</html>

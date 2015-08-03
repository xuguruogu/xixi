<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'customerInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$("tr:even").css("background","#ddd");
		})
	</script>
	<style type="text/css">
		tr {
			height: 40px;
		}
	</style>
  </head>
  
  <body>
    <div align="center">
    	<h3>用户注册资料</h3>
    	<table class="tablelist" width="500px" style="border:1px solid #aaa;text-align: center;">
    		<tr>
    			<td>
    				头像
    			</td>
    			<td>
    				<c:if test="${customer.headPic ne ''}">
    				<img alt="" src="${bp }/${customer.headPic}" height="50px" width="50px">
    				</c:if>
    				<c:if test="${customer.headPic eq ''}">
    				无头像
    				</c:if>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				昵称
    			</td>
    			<td>
    				${customer.nickname }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				学校
    			</td>
    			<td>
    				${customer.school }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				注册邮箱
    			</td>
    			<td>
    				${customer.email }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				性别
    			</td>
    			<td>
    				${customer.sex }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				年龄
    			</td>
    			<td>
    				${customer.age }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				标签
    			</td>
    			<td>
    				${customer.label }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				注册时间
    			</td>
    			<td>
    				${customer.registTime }
    			</td>
    		</tr>
    		<tr>
    			<td>
    				帐号状态
    			</td>
    			<td>
    				<c:if test="${customer.status==0}">
    				正常
    				</c:if>
    				<c:if test="${customer.status==1}">
    				封停
    				</c:if>
    			</td>
    		</tr>
    	</table>
    </div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xqzInfo.jsp' starting page</title>
    
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
    <div align="center">
    	<div align="center">
    		<div align="left">
    			<c:if test="${xqz.publisher.headPic==null || xqz.publisher.headPic eq ''}">
    				默认头像
    			</c:if>
    			<c:if test="${xqz.publisher.headPic!=null && xqz.publisher.headPic ne ''}">
    				<img src="${bp }/${xqz.publisher.headPic}" height="50px" width="50px"/>
    			</c:if>
    			<br/>
    			${xqz.publisher.nickname }
    			<br/>
    			<div align="right" style="font-size: 14px;">
    				点赞数：${xqz.likeCount }&nbsp;&nbsp;duang数：${xqz.dislikeCount }&nbsp;&nbsp;回复数：${xqz.repliesCount }
    			</div>
    			<hr/>
    			<div align="center">
    				<p>
    				${xqz.content }
    				</p>
    			</div>
    			<hr/>
    			<div align="left" style="font-size: 14px">
    				<c:forEach items="${xqz.replies }" var="r">
    					<c:if test="${r.replier.id==r.parentReplier.id}">
    						${r.replier.nickname } :${r.content }
    						<br/>
    					</c:if>
    					<c:if test="${r.replier.id!=r.parentReplier.id}">
    						${r.replier.nickname }&nbsp;回复了&nbsp;${r.parentReplier.nickname }:${r.content }
    						<br/>
    					</c:if>
    				</c:forEach>
    			</div>
    		</div>
    	</div>
    </div>
  </body>
</html>

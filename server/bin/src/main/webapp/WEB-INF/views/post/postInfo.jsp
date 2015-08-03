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
    
    <title>My JSP 'postInfo.jsp' starting page</title>
    
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
		function more(){
			$.ajax({
				type: 'POST',
				url: '${bp}/comment/commentlist',
				data: $("#form1").serialize(),
				dataType: 'json',
				success: function(msg){
					if(msg.list.length==0){
						$("#addMore").attr("value","到底了");
						$("#addMore").css("display","none");
					}
					for(var i=0;i<msg.list.length;i++){

					}
				}
			})
		}
	</script>
  </head>
  
  <body>
  	<form id="form1" action="">
  		<input type="hidden" id="pageIndex" name="pageIndex" value="${page.pageIndex+1 }"/>
  		<input type="hidden" id="postID" name="postID" value="${page.postID }"/>
  	</form>
    <div align="center">
    	<div align="center">
    	<h3>${post.title }</h3>
    	</div>
    	<hr/>
    	<!-- 楼主信息 -->
    	<div align="left">
    		<label>楼主</label>:<span>${post.publisher.nickname }</span>
    	</div>
    	<hr/>
    	<!-- 楼主帖子内容与回复列表 -->
    	<div align="left">
    		<p>
    			${post.content }
    		</p>
    		<div align="right">
		    	<label>点赞数：${post.likeCount }</label>||<label>跟帖数：${post.commentCount }</label>
		    </div>
    		<hr/>
    		<div style="font-size: 14px">
    		<span>回复列表</span>
    		<hr/>
    		<c:forEach items="${post.replies}" var="r">
    			<span>${r.replier.nickname } 回复了 ${r.parentReplier.nickname }：${r.content }</span><br/>
    		</c:forEach>
    		</div>
    	</div>
    	<hr/><hr/>
    	<div align="center" id="comm_list">
    		<c:forEach items="${commentList}" var="comment">
    			<!-- 跟楼的用户信息 -->
		    	<div align="left">
		    		<label>跟帖</label>:<span>${comment.commenter.nickname }</span>&nbsp;&nbsp;${comment.floor } 楼
		    	</div>
		    	<hr/>
		    	<!-- 跟帖内容与回复列表 -->
		    	<div align="left">
		    		<p>
		    			${comment.content  }
		    		</p>
		    		<div align="right">
		    			<label>点赞数：${comment.likeCount }</label>
		    		</div>
		    		<hr/>
		    		<div style="font-size: 14px">
		    		<span>回复列表</span>
    				<hr/>
    				<c:if test="${fn:length(comment.replies)<=0}">
    				空
    				</c:if>
		    		<c:forEach items="${comment.replies}" var="cr">
		    			<span>${cr.replier.nickname } 回复了 ${cr.parentReplier.nickname }：${cr.content }</span><br/>
		    		</c:forEach>
		    		</div>
		    	</div>
		    	<hr/>
		    	<hr/>
    		</c:forEach>
    	</div>
    	<div align="center">
    		<input type="button" value="加载更多" onclick="more()" id="addMore"/>
    	</div>
    </div>
  </body>
</html>

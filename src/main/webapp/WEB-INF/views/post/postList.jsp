<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set> 
<%
String path = request.getContextPath();
String bp = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript">
	$(function(){
	   $("#CheckedAll").click(function(){
		   if($(this).attr("checked")!=null){
		     $('[name=ids]:checkbox').attr('checked', true);
		   }
		   else{
			  $('[name=ids]:checkbox').attr('checked', false);
			   }
		 });
   });
	   
</script>
<form name="form1" id="form1">
	<table class="tablelist">
    	<thead>
    	<tr>
        <th><input id="CheckedAll" type="checkbox"/></th>
        <th>id</th>
        <th>最后更新时间</th>
        <th>发帖时间</th>
        <th>主题</th>
        <th>查看</th>
        <th>发帖人</th>
        <th>点赞数</th>
        <th>跟帖数</th>
        <th>操作</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${postList}" var="p">
						<tr>
							<td><input name="ids" type="checkbox" value="${p.id }"/></td>
							<td>${p.id }</td>
							<td>${p.lastUpTime }</td>
							<td>${p.publishTime }</td>
							<td>${p.title }</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookPost(${p.id})">查看帖子</a>
							</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookPublisher(${p.publisher.id})">${p.publisher.nickname }</a>
							</td>
							<td>${p.likeCount }</td>
							<td>${p.commentCount }</td>
							<td>
							<c:if test="${p.orderNum==0}">
								<a href="javascript: " class="tablelink" onclick="javascript:topFunc(${p.id},${p.orderNum })">置顶</a>
							</c:if>
							<c:if test="${p.orderNum!=0}">
								<a href="javascript: " class="tablelink" onclick="javascript:topFunc(${p.id},${p.orderNum })">取消置顶</a>
							</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(postList) <= 0}">
		<tr>
			<td align="center" colspan="10">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
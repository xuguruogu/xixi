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
        <th width="5%"><input id="CheckedAll" type="checkbox"/></th>
        <th width="17%">发布时间</th>
        <th>内容</th>
        <th>发布人</th><%--
        <th>查看详情</th>
        --%></tr>
        </thead>
				<tbody>
					<c:forEach items="${xqzList}" var="xqz">
						<tr>
							<td><input name="ids" type="checkbox" value="${xqz.id }"/></td>
							<td>${xqz.publishTime }</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookXQZ(${xqz.id})">
							<c:if test="${fn:length(xqz.content)>=30}">
								${fn:substring(xqz.content,0,28) }...
							</c:if>
							<c:if test="${fn:length(xqz.content)<30}">
								${xqz.content }
							</c:if>
							</a>
							</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookPublisher(${xqz.publisher.id})">${xqz.publisher.nickname }</a>
							</td>
							<%--<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookPost(${xqz.id})">查看帖子</a>
							</td>
							--%><%--<td>
							<a href="javascript: " class="tablelink" onclick="javascript:deletes(${p.publisher.id})">--</a>
							</td>
						--%></tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(xqzList) <= 0}">
		<tr>
			<td align="center" colspan="4">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
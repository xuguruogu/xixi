<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set> 
<%
String path = request.getContextPath();
String bp = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link href="${bp}/resource/css/style2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$('.tablelist tbody tr:odd').addClass('odd');
	})
</script>
	<table class="tablelist" width="300px">
    	<thead>
    	<tr>
        <th width="5%">ID</th>
        <th width="40%">功能名称</th>
        <th>备注</th>
        </tr>
        </thead>
			<tbody>
			<c:forEach items="${rootlist}" var="proot">
				<c:if test="${proot.menu.parentID==0}">
				<tr>
					<td>${proot.menu.id }</td>
					<td>${proot.menu.menuName }</td>
					<td>${proot.menu.remarks }</td>
				</tr>
				<c:forEach items="${rootlist}" var="sroot">
					<c:if test="${sroot.menu.parentID==proot.menu.id}">
					<tr>
						<td>${sroot.menu.id }</td>
						<td>&nbsp;&nbsp;┗━&nbsp;${sroot.menu.menuName }</td>
						<td>${sroot.menu.remarks }</td>
					</tr>
					</c:if>
				</c:forEach>
				</c:if>
			</c:forEach>
		</tbody>
	</table>

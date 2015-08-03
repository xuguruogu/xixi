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
        <th>消息内容</th>
        <th>编辑时间</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${smList}" var="sm">
						<tr>
							<td><input name="ids" type="checkbox" value="${sm.id }"/></td>
							
							<td>${sm.content }</td>
							<td>${sm.publishTime }</td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(smList) <= 0}">
		<tr>
			<td align="center" colspan="3">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
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
        <th width="10%">反馈时间</th>
        <th>反馈用户</th>
        <th>反馈内容</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${fbList}" var="fb">
						<tr>
							<td><input name="ids" type="checkbox" value="${fb.id }"/></td>
							<td>${fb.date }</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookCustomer(${fb.customer.id})">${fb.customer.nickname }</a>
							</td>
							<td title="${fb.content }">
								<c:if test="${fn:length(fb.content)>=50}">
									${fn:substring(fb.content,0,48) }...
								</c:if>
								<c:if test="${fn:length(fb.content)<50}">
									${fb.content }
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(fbList) <= 0}">
		<tr>
			<td align="center" colspan="4">
				无反馈记录。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
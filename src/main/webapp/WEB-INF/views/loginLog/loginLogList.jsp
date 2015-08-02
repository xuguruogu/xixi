<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set> 
<%
String path = request.getContextPath();
String bp = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript"><%--
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
	   
--%></script>
<form name="form1" id="form1">
	<table class="tablelist">
    	<thead>
    	<tr><%--
        <th><input id="CheckedAll" type="checkbox"/></th>
        --%><th>登录时间</th>
        <th>登录用户</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${loginLogList}" var="l">
						<tr>
							<%--<td><input name="ids" type="checkbox" value="${role.id }"/></td>
							--%>
							<td>${l.loginTime }</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:lookCustomer(${l.customer.id})">${l.customer.nickname }</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(loginLogList) <= 0}">
		<tr>
			<td align="center" colspan="2">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
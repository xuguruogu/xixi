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
        <th>ID</th>
        <th>角色名</th>
        <th>角色拥有权限</th>
        <th>操作</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${roleList}" var="role">
						<tr>
							<td><input name="ids" type="checkbox" value="${role.id }"/></td>
							<td>${role.id }</td>
							<td>${role.roleName }</td>
							<td>
							<a href="javascript: " class="tablelink" onclick="javascript:details(${role.id})">详情</a>
							</td>
							<td><a href="javascript: " class="tablelink" onclick="javascript:updateFunc(${role.id})">修改</a></td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(roleList) <= 0}">
		<tr>
			<td align="center" colspan="5">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
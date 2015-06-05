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
        <th>ID</th>
        <th>用户</th>
        <th>密码</th>
        <th>真实姓名</th>
        <th>邮箱</th>
        <th>联系电话</th>
        <th>角色</th>
        <th>状态</th>
        <th>操作</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${userList}" var="user">
						<tr>
							<td><input name="ids" type="checkbox" value="${user.id }"/></td>
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.password }</td>
							<td>${user.realname }</td>
							<td>${user.email }</td>
							<td>${user.tel }</td>
							<td>
								<c:forEach items="${roleList}" var="role">
									<c:if test="${role.id==user.roleID}">
									${role.roleName }
									</c:if>
								</c:forEach>
							</td>
							<td>
							<c:if test="${user.status==0}">
								<a href="javascript: " class="tablelink" onclick="javascript:updateStatus(${user.id})">启用</a>
							</c:if>
							<c:if test="${user.status==1}">
								<a href="javascript: " class="tablelink" onclick="javascript:updateStatus(${user.id})">停用</a>
							</c:if>
							</td>
							<td><a href="javascript: " class="tablelink" onclick="javascript:updateFunc(${user.id})">修改</a></td>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(userList) <= 0}">
		<tr>
			<td align="center" colspan="10">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
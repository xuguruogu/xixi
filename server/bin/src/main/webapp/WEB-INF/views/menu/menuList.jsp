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
        <th>名称</th>
        <th>URL</th>
        <th>父类菜单ID</th>
        <th>排序</th>
        <th>备注</th>
        <th>操作</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${menuList}" var="menu">
						<c:if test="${menu.parentID==0}">
							<tr>
								<td><input name="ids" type="checkbox" value="${menu.id }"/></td>
								<td>${menu.id }</td>
								<td>${menu.menuName }</td>
								<td>${menu.url }</td>
								<td>${menu.parentID }</td>
								<td>${menu.orderNum }</td>
								<td>${menu.remarks }</td>
								<td><a href="javascript: " class="tablelink" onclick="javascript:updateFunc(${menu.id})">修改</a></td>
							</tr>
							<c:forEach items="${menuList}" var="menu2">
								<c:if test="${menu2.parentID!=0&&menu2.parentID==menu.id}">
									<tr>
										<td><input name="ids" type="checkbox" value="${menu2.id }"/></td>
										<td>${menu2.id }</td>
										<td>&nbsp;&nbsp;┗━&nbsp;${menu2.menuName }</td>
										<td>${menu2.url }</td>
										<td>${menu2.parentID }</td>
										<td>${menu2.orderNum }</td>
										<td>${menu2.remarks }</td>
										<td><a href="javascript: " class="tablelink" onclick="javascript:updateFunc(${menu2.id})">修改</a></td>
									</tr>
								</c:if>
							</c:forEach>
						</c:if>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(menuList) <= 0}">
		<tr>
			<td align="center" colspan="8">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
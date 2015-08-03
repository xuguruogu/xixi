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
        --%><th>ID</th>
        <th>头像</th>
        <th>昵称</th>
        <th>学校</th>
        <th>邮箱</th>
        <th>性别</th>
        <th>年龄</th>
        <th>标签</th>
        <th>注册时间</th>
        <th>状态</th>
        </tr>
        </thead>
				<tbody>
					<c:forEach items="${customerList}" var="c">
						<tr>
							<%--<td><input name="ids" type="checkbox" value="${role.id }"/></td>
							--%>
							<td>${c.id }</td>
							<td>
							<c:if test="${c.headPic==''}">
							默认
							</c:if>
							<c:if test="${c.headPic!=''}">
							<img src="${bp }/${c.headPic}" height="50px" width="50px"/>
							</c:if>
							</td>
							<td>${c.nickname }</td>
							<td>${c.school }</td>
							<td>${c.email }</td>
							<td>${c.sex }</td>
							<td>${c.age }</td>
							<td>${c.label }</td>
							<td>${c.registTime }</td>
							<td>
							<c:if test="${c.status==0}">
							<a href="javascript: " class="tablelink" onclick="javascript:updateStatus(${c.id})">正常</a></td>
							</c:if>
							<c:if test="${c.status==1}">
							<a href="javascript: " class="tablelink" onclick="javascript:updateStatus(${c.id})">封停</a></td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
		<c:if test="${fn:length(customerList) <= 0}">
		<tr>
			<td align="center" colspan="10">
				无数据。
			</td>
		</tr>
		</c:if>
    </table>
    </form>
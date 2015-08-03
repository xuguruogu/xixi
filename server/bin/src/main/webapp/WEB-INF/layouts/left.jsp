<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div>
	<h1>profile</h1>
	<div class="submenu">
		<a href="${ctx}/account/user/">个人资料</a>
		<a href="${ctx}/account/user/">管理员权限</a>
	</div>
	<h1>admin</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/story/redis">用户管理</a>
		<a id="web-tab" href="${ctx}/user/user">用户管理</a>
		<a id="webservice-tab"href="${ctx}/menu/menu">功能管理</a>
		<a id="hystrix-tab" href="${ctx}/role/role">角色管理</a>
		<a id="jmx-tab" href="${ctx}/user/userInfo">个人管理</a>
	</div>
</div>
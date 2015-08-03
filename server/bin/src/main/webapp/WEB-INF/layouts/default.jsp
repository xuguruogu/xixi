<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>灵犀后台:<sitemesh:title /></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="${ctx}/static/images/favicon.ico"
	rel="shortcut icon">
<link href="${ctx}/static/styles/default.min.css" type="text/css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!--
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
-->

<!-- art dialog -->
<script
	src="${ctx}/static/artDialog/jquery.artDialog.source.js?skin=chrome"
	type="text/javascript"></script>
<script src="${ctx}/static/artDialog/iframeTools.source.js"
	type="text/javascript"></script>
<script src="${ctx}/static/artDialog/sys_dialog.js"
	type="text/javascript"></script>

<!--  -->
<script src="${ctx}/static/jquery-pagination/jquery.pagination.js"
	type="text/javascript"></script>

<link href="${ctx}/static/styles/style2.css" type="text/css"
	rel="stylesheet" />
<link href="${ctx}/static/jquery-pagination/pagination.css"
	type="text/css" rel="stylesheet" />


<sitemesh:head />

</head>

<body>
	<div class="container">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div class="row">
			<div id="leftbar" class="col-sm-3 col-md-2 col-lg-2">
				<%@ include file="/WEB-INF/layouts/left.jsp"%>
			</div>
			<div id="main" class="col-sm-9 col-md-10 col-lg-10">
				<sitemesh:body />
			</div>
		</div>
	</div>
</body>
</html>
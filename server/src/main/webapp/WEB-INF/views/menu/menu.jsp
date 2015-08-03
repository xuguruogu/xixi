<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String bp = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'productList.jsp' starting page</title>
    
	<link href="${bp}/resource/css/style2.css" rel="stylesheet" type="text/css" />
	<link href="${bp}/resource/css/pagination.css" rel="stylesheet" type="text/css" />
	<link href="${bp}/resource/css/select2.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/select-ui.min.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.pagination.js"></script>
	<script type="text/javascript">
		$(function() {
			menulist();
		});
	
		
		function menulist() {
			$.ajax( {
				type : "POST",
				url : "${bp}/menu/menuList",
				success : function(msg) {
					$("#manger").html(msg);
					$('.tablelist tbody tr:odd').addClass('odd');
				}
			});
		}
	
	
		function addFunc(){
			var myart = {
					title : "添加功能模块",
					width : '530px',
					height : '300px',
					lock : true,
					init : function() {
					},
					ok : function() {
					var iframe = this.iframe.contentWindow;
					var flag=iframe.addSubmit();
					if(flag==1){
						$.ajax({
						     type: "POST",
						     url: "${bp}/menu/menuList",
						 	 dataType : "text",
						     success: function(msg){
						    	 $("#manger").html(msg);
						    	 $('.tablelist tbody tr:odd').addClass('odd');
							}
						});
						this.close();
						return true;
						}
					else{
						return false;
						}
				},
				cancel : true
				}
			artDialog.open("${bp}/menu/toAdd", myart);
		}
		
		function deleteFunc(){
			if($('[name=ids]:checked').length==0){
		   		alert("请至少选择一条记录进行删除操作");
		   		return;
			}
			if(confirm("确认删除？")){
				$.ajax({
				     type: "POST",
				     url: "${bp}/menu/delete",
				     data:$('#form1').serialize(),
				 	 dataType : "text",
				     success: function(msg){
					     if(msg=='yes'){alert("删除成功")}
					     else if(msg=='no1'){alert("删除失败，请检查该菜单是否有子菜单")}
					     else if(msg=='no2'){alert("删除失败，请检查该菜单是否有角色拥有")}
					     else{alert("删除失败，请检查")}
						 window.location = "${bp}/menu/menu";
					}
				})
			}
		}
		//修改功能信息
		function updateFunc(id){
			var myart = {
				title : "修改功能信息",
				width : '520px',
				height : '390px',
				lock : true,
				init : function() {
				},
				ok : function() {
					var iframe = this.iframe.contentWindow;
					var flag=iframe.updateSubmit();
					if(flag==1){
						$.ajax({
						     type: "POST",
						     url: "${bp}/menu/menuList",
						 	 dataType : "text",
						     success: function(msg){
						    	 $("#manger").html(msg);
						    	 $('.tablelist tbody tr:odd').addClass('odd');
							}
						});
						this.close();
						return true;
					}else{
						return false;
					}
				},
				cancel : true
			}
			artDialog.open("${bp}/menu/toUpdate?id="+id, myart);
		}
		/*
		function search(){
			$("#search_form").attr("action","${bp}/menu/menu");
			$("#search_form").submit();
		}*/
	</script>

  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">功能管理</a></li>
    <li><a href="#">功能模块管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="javascript:addFunc()"><span><img src=" ${bp}/resource/images/t01.png" /></span>添加</li>
        <li onclick="javascript:deleteFunc()"><span><img src="${bp}/resource/images/t03.png" /></span>删除</li>
        </ul>
        <%--<form id="search_form" action="" method="post">
    	模糊查询：<input type="text" id="searchText" name="searchText" class="scinput" value="${page.searchText }"/>
    	&nbsp;&nbsp;
    	<input name="" onclick="search();" type="button" class="scbtn" value="查询"/>
    	</form>
    --%></div>
  	 <div align="center">
		<div id='manger'>
			<div align="center">
		     	<img src="${bp}/resource/images/loading.gif"/><br/>
		     	数据正在加载中，请勿关闭浏览器，稍等。。。
			</div>
	     </div>
	    <div class="pagin">
	   	  <div id="pagination"  class="pagination" >
	      </div>
	    </div>
		</div>
</div>
</body>
</html>
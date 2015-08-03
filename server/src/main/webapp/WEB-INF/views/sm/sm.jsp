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
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${bp}/resource/css/style2.css" rel="stylesheet" type="text/css" />
	<link href="${bp}/resource/css/pagination.css" rel="stylesheet" type="text/css" />
	<link href="${bp}/resource/css/select2.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/select-ui.min.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.pagination.js"></script>
	<script type="text/javascript" src="${bp}/artDialog/jquery.artDialog.source.js?skin=chrome"></script>
	<script type="text/javascript" src="${bp}/artDialog/iframeTools.source.js"></script>
	<script type="text/javascript" src="${bp}/artDialog/sys_dialog.js"></script>
	<script type="text/javascript">
		var tempPage="";
		$(function() {
			gong('${count}');
		});
	
		function gong(count) {
			$("#pagination").pagination(count, {
				first_text : "首页",
				prev_text : "上一页",
				next_text : "下一页",
				last_text : "尾页",
				ellipse_text : " ",
				num_edge_entries : 0,
				num_display_entries : 5,
				items_per_page:10,
				callback:pageselectCallback
			});
		
		function pageselectCallback(page_id, jq) {
			tempPage=page_id;
			$.ajax( {
				type : "POST",
				url : "${bp}/sm/smList?pageIndex=" + page_id,
				data : $("#search_form").serialize(),
				success : function(msg) {
					$("#manger").html(msg);
					$('.tablelist tbody tr:odd').addClass('odd');
				}
			});
		}
	}
	

		function addFunc(){
			var myart = {
					title : "添加推送消息",
					width : '530px',
					height : '180px',
					lock : true,
					init : function() {
					},
					ok : function() {
					var iframe = this.iframe.contentWindow;
					var flag=iframe.addSubmit();
					if(flag==1){
						$.ajax({
						     type: "POST",
						     url: "${bp}/sm/smList?pageIndex=" + tempPage,
						     data:$('#search_form').serialize(),
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
			artDialog.open("${bp}/sm/toAdd", myart);
		}
		
		function deleteFunc(){
			if($('[name=ids]:checked').length==0){
		   		alert("请至少选择一条记录进行删除操作");
		   		return;
			}
			if(confirm("确认删除？")){
				$.ajax({
				     type: "POST",
				     url: "${bp}/sm/delete",
				     data:$('#form1').serialize(),
				 	 dataType : "text",
				     success: function(msg){
					     if(msg=='yes'){alert("删除成功")}
					     else{alert("删除失败，请检查")}
						 window.location = "${bp}/sm/sm";
					}
				})
			}
		}
	
		
		/*
		function updateStatus(id){
			if(confirm("是否更改状态？")){
				$.ajax({
					type: 'GET',
					url: '${bp}/customer/updateStatus?customerID='+id,
					dataType: 'json',
					success: function(msg){
						if(msg.checked==0){
							gong('${count}');
						}else{
							alert("更改失败");
						}
					},
					error: function(){
						alert("异常错误error");
					}						
				})
			}
		}
		
		//搜索
		function search(){
			$("#search_form").attr("action","${bp}/sm/sm");
			$("#search_form").submit();
		}
		*/
	</script>

  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">消息推送</a></li>
    <li><a href="#">推送消息管理</a></li>
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
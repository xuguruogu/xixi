<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>修改菜单信息</title>
	<link href="${bp}/resource/css/amazeui.min.css" rel="stylesheet" type="text/css">
	<script src="${bp}/resource/js/amazeui.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${bp}/resource/js/jquery.js"></script>
	<script type="text/javascript" src="${bp}/resource/js/Validform_v5.3.2_min.js"></script>
	<script src="${bp}/resource/js/jquery.autocomplete.js" type="text/javascript"></script>
	<link href="${bp}/resource/css/jquery.autocomplete.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript">
	
	//修改菜单信息
	function updateSubmit(){
		var flag= 2;
		$.ajax( {
			type : "POST",
			async : false,
			dataType: "text",
			url : "${bp}/menu/update",
			data : $("#update_From").serialize(),
			success : function(msg) {
				if(msg=='yes'){
					alert('修改成功');
					flag = 1;
				}else if(msg=='no'){
					alert('修改失败，请检查菜单名是否重复');
					flag = 2;
				}else{
					alert('修改失败，请检查');
					flag = 2;
				}
			}
		});
		return flag;
   	}
</script>
  </head>
  
   <body>
    	<form id="update_From" action="" class="am-form" data-am-validator>
    	<input type="hidden" name="id" value="${menu.id }" />
    <div>
    	<div align="center">
	    	<h1><span>修改功能信息</span></h1>
	    	<hr/>
    	</div>
    </div>
    <div>
    	<div align="center">
    		<table style="border: 1px solid #999;text-align: center" width="500px">
    			<tr>
    				<td>请输入菜单名称：</td>
    				<td><input type="text" id="menuName" name="menuName" value="${menu.menuName }"/></td>
    			</tr>
    			<tr>
    				<td>请输入菜单url(顶层菜单不填)：</td>
    				<td><input type="text" id="url" name="url" value="${menu.url }"/></td>
    			</tr>
    			<tr>
    				<td>请选择父类菜单：</td>
    				<td>
    					<select name="parentID">
    						<c:forEach items="${menuList}" var="m">
    							<c:if test="${m.id==menu.parentID}">
		    						<option value="${m.id }">${m.menuName }</option>
    							</c:if>
    						</c:forEach>
    						<option value="0">==顶层菜单==</option>
    						<c:forEach items="${menuList}" var="m">
    							<c:if test="${m.id!=menu.parentID&&m.parentID==0}">
		    						<option value="${m.id }">${m.menuName }</option>
    							</c:if>
    						</c:forEach>
    					</select>
    				</td>
    			</tr>
    			<tr>
    				<td>请输入菜单排序：</td>
    				<td><input type="text" id="orderNum" name="orderNum" value="${menu.orderNum }"/></td>
    			</tr>
    			<tr>
    				<td>请输入备注信息：</td>
    				<td><input type="text" id="remarks" name="remarks" value="${menu.remarks }"/></td>
    			</tr>
    		</table>
    	</div>
    </div>
    	</form>
  </body>
</html>

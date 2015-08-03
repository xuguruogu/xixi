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
		$(function(){
			$('.tablelist tbody tr:odd').addClass('odd');
		})
		
		function goSelect(id){
			var arr = id.split("_");
			var superid = arr[0]+"_"+arr[0];
			if(arr[0] != arr[1]){  
                //如果点击子类复选框，则父类的复选框处于选中状态  
                if($("#"+id)[0].checked){  
                    //组织父类id  
                    $("#"+superid).attr("checked","checked");  
                }else{  
                    var flag = false;  
                    //过滤选择1，checkbox2，以arr[0]开头，3，不以arr[0]结尾的checkbox  
                    var $child = $("input[type = checkbox][id ^="+arr[0]+" ]:not([id $="+arr[0]+"])");  
                    $child.each(function(index,DomEle){  
                    //  alert();  
                        if(this.checked){  
                            flag = true;  
                            return;  
                        }  
                    });  
                    if(!flag){  
                        $("#"+superid).attr("checked",null);  
                    }  
                }  
            }
			if(arr[0] == arr[1]){  
                if($("#"+id)[0].checked){  
            //  alert("yyy");  
                    $("input[type = checkbox][id ^="+arr[0]+"]").attr("checked","checked");  
                }else{  
                	$("input[type = checkbox][id ^="+arr[0]+"]").attr("checked",null);  
                }  
            }
		}

		function btn(){
			if($('[name=menus]:checked').length==0){
		   		alert("请至少选择一项菜单");
		   		return;
			}
			$("#role_form").submit();
		}
	</script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">角色管理</a></li>
    <li><a href="#">修改系统角色权限</a></li>
    </ul>
    </div>
    <form id="role_form" action="${bp }/role/update" method="get">
    <input type="hidden" name="roleID" value="${role.id }">
	<div class="rightinfo">
  		<div align="center">
		<div id='manger'>
		<div align="left">
		<table>
			<tr>
				<td width="100px">角色名</td>
				<td>${role.roleName }</td>
			</tr>
		</table>
		<br/>
		</div>
		<table class="tablelist">
    	<thead>
    	<tr>
        <th>ID</th>
        <th>功能名称</th>
        <th>备注</th>
        <th>选择</th>
        </tr>
        </thead>
			<tbody>
			<c:forEach items="${parentMenus}" var="pmenu">
				<c:set var="isGoing" value="0"></c:set>
				<tr>
					<td>${pmenu.id }</td>
					<td>${pmenu.menuName }</td>
					<td>${pmenu.remarks }</td>
					<td>
						<c:forEach items="${rootList}" var="root">
						<c:if test="${root.menu.id==pmenu.id}">
						<input id="${pmenu.id }_${pmenu.id }" checked="checked" type="checkbox" onclick="goSelect(this.id)" name="menus" value="${pmenu.id }"/>
						<c:set var="isGoing" value="1"></c:set>
						</c:if>
						</c:forEach>
						<c:if test="${isGoing==0}">
						<input id="${pmenu.id }_${pmenu.id }" type="checkbox" onclick="goSelect(this.id)" name="menus" value="${pmenu.id }"/>
						</c:if>
					</td>
				</tr>
				<c:forEach items="${sonMenus}" var="smenu">
					<c:set var="isGoing2" value="0"></c:set>
					<c:if test="${smenu.parentID==pmenu.id}">
					<tr>
						<td>${smenu.id }</td>
						<td>&nbsp;&nbsp;┗━&nbsp;${smenu.menuName }</td>
						<td>${smenu.remarks }</td>
						<td>
						<c:forEach items="${rootList}" var="root">
						<c:if test="${root.menu.id==smenu.id}">
						<input id="${pmenu.id }_${smenu.id }" checked="checked" type="checkbox" onclick="goSelect(this.id)" name="menus" value="${smenu.id }"/></td>
						<c:set var="isGoing2" value="1"></c:set>
						</c:if>
						</c:forEach>
						<c:if test="${isGoing2==0}">
						<input id="${pmenu.id }_${smenu.id }" type="checkbox" onclick="goSelect(this.id)" name="menus" value="${smenu.id }"/></td>
						</c:if>
					</tr>
					</c:if>
				</c:forEach>
			</c:forEach>
			</tbody>
		<c:if test="${fn:length(parentMenus) <= 0}">
		<tr>
			<td align="center" colspan="4">
				无数据。
			</td>
		</tr>
		</c:if>
    	</table>
    	<br/>
    	<input type="button" class="scbtn" value="修改权限" onclick="javascript: btn()"/>
	    </div>
		</div>
	</div>
    </form>
</body>
</html>
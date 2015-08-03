<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="bp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

	//修改管理员信息
	function updateFunc(){
		var myart = {
				title : "修改管理员信息",
				width : '450px',
				height : '380px',
				lock : true,
				init : function() {
				},
				ok : function() {
					var iframe = this.iframe.contentWindow;
					var flag=iframe.updateSubmit();
					if(flag==1){
						window.location = "${bp}/user/userInfo";
						this.close();
						return true;
					}else{
						return false;
					}
				},
				cancel : true
			}
		artDialog.open("${bp}/user/toUpdate?id=${user.id}", myart);
	}

     </script>
</head>
<body>

    
    <div class="rightinfo">
    
	<div class="formtitle"><span>系统管理员信息</span></div>
	
	<div class="tools">
 
    	<ul class="toolbar">
        <a href="javascript: " class="tablelink" onclick="javascript:updateFunc()"><li class="click"><span><img src="${bp}/resource/images/t02.png"  id="upd"/></span>修改管理员信息</li></a>
        
        </ul>
    </div>
   	<div id='manger'>
		<div align="center">
	     	<table style="font-size: 20px"  width="500px" height="350px">
	     		<tr>
	     			<td style="font-size: 20px" >账号:</td>
	     			<td style="font-size: 20px" >${user.username }</td>
	     		</tr>
	     		<tr style="font-size: 20px" >
	     			<td style="font-size: 20px" >密码:</td>
	     			<td style="font-size: 20px" >${user.password }</td>
	     		</tr>
	     		<tr>
	     			<td style="font-size: 20px" >姓名:</td>
	     			<td style="font-size: 20px" >${user.realname }</td>
	     		</tr>
	     		<tr>
	     			<td style="font-size: 20px" >邮箱:</td>
	     			<td style="font-size: 20px" >${user.email }</td>
	     		</tr>
	     		<tr>
	     			<td style="font-size: 20px" >联系电话:</td>
	     			<td style="font-size: 20px" >${user.tel }</td>
	     		</tr>
	     		<tr>
	     			<td style="font-size: 20px" >类型:</td>
	     			<td style="font-size: 20px" >系统管理员</td>
	     		</tr>
	     	</table>
		</div>
     </div>
    <div class="pagin">
   	  <div id="pagination"  class="pagination" >
      </div>
    </div>
   
    </div>
  
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>论坛app接口</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h2>论坛app接口</h2>
    <hr>
    <h3>【用户模块】</h3>
    <hr>
    <h3>·用户注册</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/regist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">headPic</td><td>用户头像图片路径（不上传就传空字符串）</td></tr>
    	<tr><td width="10%">nickname</td><td>昵称</td></tr>
    	<tr><td width="10%">school</td><td>学校</td></tr>
    	<tr><td width="10%">email</td><td>邮箱</td></tr>
    	<tr><td width="10%">password</td><td>密码</td></tr>
    	<tr><td width="10%">sex</td><td>性别</td></tr>
    	<tr><td width="10%">age</td><td>年龄</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2,3（0代表注册成功，1代表邮箱已被注册，2代表其他原因错误，3代表注册信息（email，password,nickname）不完整）</td></tr>
    </table>
    <hr>
    <h3>·加载大学名录（用来选择学校，也可手动编辑）</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/schoollist</span><br><br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">list</td><td>大学名称的集合</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表返回成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·图片上传</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/uploadImg</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">file</td><td>图片文件</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">headPic</td><td>上传图片的路径</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表上传成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·用户登录</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/login</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">email</td><td>邮箱</td></tr>
    	<tr><td width="10%">password</td><td>密码</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表登录成功，1代表邮箱或密码错误，，3代表其他原因错误）</td></tr>
    	<tr><td width="10%">headPic</td><td>用户头像图片存储路径</td></tr>
    	<tr><td width="10%">nickname</td><td>昵称</td></tr>
    	<tr><td width="10%">school</td><td>学校</td></tr>
    	<tr><td width="10%">email</td><td>邮箱</td></tr>
    	<tr><td width="10%">password</td><td>密码</td></tr>
    	<tr><td width="10%">sex</td><td>性别</td></tr>
    	<tr><td width="10%">age</td><td>年龄</td></tr>
    	<tr><td width="10%">label</td><td>标签</td></tr>
    	<tr><td width="10%">status</td><td>帐号状态（0代表正常，1代表禁用【禁用只能查看，其他包括发帖、跟帖、回复、点赞、duang、私信、小圈子等实质性操作都不能操作】）</td></tr>
    </table>
    <hr>
    <h3>·密码找回</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/findpwd</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">email</td><td>邮箱</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表已向该邮箱发送邮件（包含密码），1代表没有该邮箱，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·查看用户基本信息（查看他人主页）</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/look</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>要查看的用户的id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">id</td><td>用户id</td></tr>
    	<tr><td width="10%">headPic</td><td>用户头像图片路径</td></tr>
    	<tr><td width="10%">nickname</td><td>用户昵称</td></tr>
    	<tr><td width="10%">sex</td><td>性别</td></tr>
    	<tr><td width="10%">age</td><td>年龄</td></tr>
    	<tr><td width="10%">school</td><td>学校</td></tr>
    	<tr><td width="10%">label</td><td>标签</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表查询到，1代表未查询到，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>【鹊桥帖子模块】</h3>
    <hr>
    <h3>·鹊桥帖子列表分页查询</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/post/postlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">id</td><td>帖子id</td></tr>
    	<tr><td width="10%">title</td><td>帖子标题</td></tr>
    	<tr><td width="10%">publisher.headPic</td><td>发帖人的头像图片路径</td></tr>
    </table>
    <hr>
    <a name="postmsgapi" id="postmsgapi"></a>
    <h3>·鹊桥帖子查看</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/post/lookpost</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">id</td><td>帖子id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">id</td><td>帖子id</td></tr>
    	<tr><td width="10%">title</td><td>帖子标题</td></tr>
    	<tr><td width="10%">content</td><td>帖子内容</td></tr>
    	<tr><td width="10%">likeCount</td><td>点赞数</td></tr>
    	<tr><td width="10%">likeIds</td><td>点过赞的用户的id，防止重复点赞（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">publishTime</td><td>发布时间（格式：yyyy-MM-dd HH-mm-ss）</td></tr>
    	<tr><td width="10%">publisher.id</td><td>发布人id</td></tr>
    	<tr><td width="10%">publisher.nickname</td><td>发布人昵称</td></tr>
    	<tr><td width="10%">publisher.headPic</td><td>发布人头像图片路径</td></tr>
    	<tr><td width="10%">publisher.sex</td><td>发布人性别</td></tr>
    	<tr><td width="10%">replies回复集合{json格式集合}</td>
    	<td>
		<table>
    	<tr><td width="10%">id</td><td>回复id</td></tr>
    	<tr><td width="10%">postID</td><td>回复对应的帖子id</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    	<tr><td width="10%">parentReplier.id</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">parentReplier.nickname</td><td>被回复人的昵称</td></tr>
    	<tr><td width="10%">replier.id</td><td>回复人的id</td></tr>
    	<tr><td width="10%">replier.nickname</td><td>回复人的昵称</td></tr>
		</table>
		</td>
    	</tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表查询到，1代表未查询到，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·鹊桥帖子对应跟帖分页查询</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/comment/commentlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">postID</td><td>对应帖子id</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">id</td><td>跟帖id</td></tr>
    	<tr><td width="10%">postID</td><td>对应帖子id</td></tr>
    	<tr><td width="10%">floor</td><td>楼数（第一个跟帖是1楼）</td></tr>
    	<tr><td width="10%">likeCount</td><td>点赞数</td></tr>
    	<tr><td width="10%">likeIds</td><td>点过赞的用户的id，防止重复点赞（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">content</td><td>跟帖内容</td></tr>
    	<tr><td width="10%">publishTime</td><td>跟帖时间（格式：yyyy-MM-dd HH-mm-ss）</td></tr>
    	<tr><td width="10%">commenter.id</td><td>跟帖人id</td></tr>
    	<tr><td width="10%">commenter.headPic</td><td>跟帖人头像图片路径</td></tr>
    	<tr><td width="10%">commenter.nickname</td><td>跟帖人昵称</td></tr>
    	<tr><td width="10%">commenter.sex</td><td>跟帖人性别</td></tr>
    	<tr><td width="10%">replies回复集合{json格式集合}</td>
    	<td>
		<table>
    	<tr><td width="10%">id</td><td>回复id</td></tr>
    	<tr><td width="10%">postID</td><td>回复对应的帖子id</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    	<tr><td width="10%">parentReplier.id</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">parentReplier.nickname</td><td>被回复人的昵称</td></tr>
    	<tr><td width="10%">replier.id</td><td>回复人的id</td></tr>
    	<tr><td width="10%">replier.nickname</td><td>回复人的昵称</td></tr>
		</table>
		</td>
    	</tr>
    </table>
    <hr>
    <h3>·发布鹊桥帖子</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/post/releasepost</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">title</td><td>帖子标题</td></tr>
    	<tr><td width="10%">content</td><td>帖子内容</td></tr>
    	<tr><td width="10%">publisherID</td><td>发布人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表发布成功，1代表其他原因错误，发布失败）</td></tr>
    </table>
    <hr>
    <h3>·发布跟帖</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/comment/follow</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">postID</td><td>对应帖子id</td></tr>
    	<tr><td width="10%">content</td><td>帖子内容</td></tr>
    	<tr><td width="10%">commenterID</td><td>跟帖人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表跟帖成功，1代表其他原因错误，跟帖失败）</td></tr>
    </table>
    <hr>
    <h3>·在最顶端的帖子（不是跟帖）中回复</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/postReplies/repliespost</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">postID</td><td>被回复的帖子的id</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    	<tr><td width="10%">parentReplierID</td><td>被回复人</td></tr>
    	<tr><td width="10%">replierID</td><td>回复人</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表回复成功，1代表其他原因错误，回复失败）</td></tr>
    </table>
    <hr>
    <h3>·在跟帖中回复</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/postReplies/repliescomment</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">commentID</td><td>被回复的跟帖的id</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    	<tr><td width="10%">parentReplierID</td><td>被回复人</td></tr>
    	<tr><td width="10%">replierID</td><td>回复人</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表回复成功，1代表其他原因错误，回复失败）</td></tr>
    </table>
    <hr>
    <h3>·对最顶端帖子（不是跟帖）点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/post/likepost</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">postID</td><td>帖子id</td></tr>
    	<tr><td width="10%">customerID</td><td>点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表点赞成功，1代表已点过赞，2代表其他原因错误，点赞失败）</td></tr>
    </table>
    <hr>
    <h3>·对最顶端帖子（不是跟帖）取消点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/post/dislikepost</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">postID</td><td>帖子id</td></tr>
    	<tr><td width="10%">customerID</td><td>取消点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表取消点赞成功，1代表已取消点赞，2代表其他原因错误，取消点赞失败）</td></tr>
    </table>
    <hr>
    <h3>·对跟帖点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/comment/likecomment</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">commentID</td><td>跟帖的id</td></tr>
    	<tr><td width="10%">customerID</td><td>点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表点赞成功，1代表已点过赞，2代表其他原因错误，点赞失败）</td></tr>
    </table>
    <hr>
     <h3>·对跟帖取消点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/comment/dislikecomment</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">commentID</td><td>跟帖的id</td></tr>
    	<tr><td width="10%">customerID</td><td>取消点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表取消点赞成功，1代表已取消点赞，2代表其他原因错误，取消点赞失败）</td></tr>
    </table>
    <hr>
    <h3>【小圈子模块】</h3>
    <hr>
    <a name="xqzmsgapi" id="xqzmsgapi"></a>
    <h3>·小圈子查看</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/lookxqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">id</td><td>小圈子id</td></tr>
    	<tr><td width="10%">content</td><td>小圈子内容</td></tr>
    	<tr><td width="10%">publishTime</td><td>发布时间</td></tr>
    	<tr><td width="10%">likeCount</td><td>点赞数</td></tr>
    	<tr><td width="10%">likeIds</td><td>点过赞的人id，防止重复点赞（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">dislikeCount</td><td>丢狗屎数</td></tr>
    	<tr><td width="10%">dislikeIds</td><td>丢过狗屎的人id，防止重复丢狗屎（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">repliesCount</td><td>评论数</td></tr>
    	<tr><td width="10%">publisher.id</td><td>发布人id</td></tr>
    	<tr><td width="10%">publisher.nickname</td><td>发布人昵称</td></tr>
    	<tr><td width="10%">publisher.headPic</td><td>发布人头像图片路径</td></tr>
    	<tr><td width="10%">publisher.sex</td><td>发布人性别</td></tr>
    	<tr><td width="10%">replies小圈子对应的回复列表 {json格式集合} list</td>
    	<td>
		<table width="100%">
    	<tr><td width="10%">xqzID</td><td>对应小圈子的id</td></tr>
    	<tr><td width="10%">parentReplier.id</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">parentReplier.nickname</td><td>被回复人的昵称</td></tr>
    	<tr><td width="10%">replier.id</td><td>回复人的id</td></tr>
    	<tr><td width="10%">replier.nickname</td><td>回复人的昵称</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
   		</table>
		</td>
		</tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表查询到，1代表未查询到，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·小圈子列表分页查询（按发布时间倒叙）</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/xqzlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>用户id</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">id</td><td>小圈子id</td></tr>
    	<tr><td width="10%">content</td><td>小圈子内容</td></tr>
    	<tr><td width="10%">publishTime</td><td>发布时间</td></tr>
    	<tr><td width="10%">likeCount</td><td>点赞数</td></tr>
    	<tr><td width="10%">likeIds</td><td>点过赞的人id，防止重复点赞（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">dislikeCount</td><td>丢狗屎数</td></tr>
    	<tr><td width="10%">dislikeIds</td><td>丢过狗屎的人id，防止重复丢狗屎（例：1,2,3,4...）</td></tr>
    	<tr><td width="10%">repliesCount</td><td>评论数</td></tr>
    	<tr><td width="10%">publisher.id</td><td>发布人id</td></tr>
    	<tr><td width="10%">publisher.nickname</td><td>发布人昵称</td></tr>
    	<tr><td width="10%">publisher.headPic</td><td>发布人头像图片路径</td></tr>
    	<tr><td width="10%">publisher.sex</td><td>发布人性别</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表返回成功，1代表其他错误）</td></tr>
    </table>
    <hr>
    <h3>·小圈子发布</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/releasexqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">content</td><td>小圈子内容</td></tr>
    	<tr><td width="10%">publisherID</td><td>发布人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表发布成功，1代表其他原因错误，发布失败）</td></tr>
    </table>
    <hr>
    <h3>·小圈子点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/likexqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    	<tr><td width="10%">customerID</td><td>点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表点赞成功，1代表已点赞，2代表其他原因错误，点赞失败）</td></tr>
    </table>
    <hr>
    <h3>·小圈子取消点赞</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/cancellikexqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    	<tr><td width="10%">customerID</td><td>取消点赞的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表取消点赞成功，1代表已取消点赞，2代表其他原因错误，取消点赞失败）</td></tr>
    </table>
    <hr>
    <h3>·小圈子丢狗屎</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/dislikexqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    	<tr><td width="10%">customerID</td><td>丢狗屎的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表丢狗屎成功，1代表已丢狗屎，2代表其他原因错误，丢狗屎失败）</td></tr>
    </table>
    <hr>
    <h3>·小圈子取消丢狗屎</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqz/canceldislikexqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    	<tr><td width="10%">customerID</td><td>取消丢狗屎的人id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表取消丢狗屎成功，1代表已取消丢狗屎，2代表其他原因错误，取消丢狗屎失败）</td></tr>
    </table>
    <hr>
    <h3>·小圈子回复列表查看</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqzReplies/replieslist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">xqzID</td><td>对应小圈子的id</td></tr>
    	<tr><td width="10%">parentReplier.id</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">parentReplier.nickname</td><td>被回复人的昵称</td></tr>
    	<tr><td width="10%">replier.id</td><td>回复人的id</td></tr>
    	<tr><td width="10%">replier.nickname</td><td>回复人的昵称</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    </table>
    <hr>
    <h3>·小圈子回复</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/xqzReplies/repliesxqz</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id</td></tr>
    	<tr><td width="10%">parentReplierID</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">replierID</td><td>回复人的id</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表回复成功，1代表其他原因错误，回复失败）</td></tr>
    </table>
    <hr>
    <h3>【私信模块】</h3>
    <hr>
    <h3>·发送私信</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/pm/sendpm</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">senderID</td><td>发送人的id</td></tr>
    	<tr><td width="10%">receiverID</td><td>接收人的id</td></tr>
    	<tr><td width="10%">content</td><td>私信内容</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表发送成功，1代表其他原因错误，发送失败）</td></tr>
    </table>
    <hr>
    <h3>·分页查看私信列表</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/pm/pmlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>登录用户的id（查看接收的私信和发送的私信）</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">id</td><td>私信的id</td></tr>
    	<tr><td width="10%">sender.id</td><td>发送人的id</td></tr>
    	<tr><td width="10%">sender.nickname</td><td>发送人的昵称</td></tr>
    	<tr><td width="10%">receiver.id</td><td>接收人的id</td></tr>
    	<tr><td width="10%">receiver.nickname</td><td>接收人的昵称</td></tr>
    	<tr><td width="10%">content</td><td>私信内容</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表返回成功，1代表其他错误）</td></tr>
    </table>
    <hr>
    <a name="pmmsgapi" id="pmmsgapi"></a>
    <h3>·查看私信详情</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/pm/lookpm</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">pmID</td><td>私信的id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">id</td><td>私信的id</td></tr>
    	<tr><td width="10%">sender.id</td><td>发送人的id</td></tr>
    	<tr><td width="10%">sender.nickname</td><td>发送人的昵称</td></tr>
    	<tr><td width="10%">sender.sex</td><td>发送人的性别</td></tr>
    	<tr><td width="10%">receiver.id</td><td>接收人的id</td></tr>
    	<tr><td width="10%">receiver.nickname</td><td>接收人的昵称</td></tr>
    	<tr><td width="10%">receiver.sex</td><td>接收人的性别</td></tr>
    	<tr><td width="10%">content</td><td>私信内容</td></tr>
    	<tr><td width="10%">replies（私信中的回复列表）{json格式集合}</td>
    	<td>
    	<table><tr><td width="10%">parentReplier.id</td><td>被回复人的id</td></tr>
    	<tr><td width="10%">parentReplier.nickname</td><td>被回复人的昵称</td></tr>
    	<tr><td width="10%">parentReplier.sex</td><td>被回复人的性别</td></tr>
    	<tr><td width="10%">replier.id</td><td>回复人的id</td></tr>
    	<tr><td width="10%">replier.nickname</td><td>回复人的昵称</td></tr>
    	<tr><td width="10%">replier.sex</td><td>回复人的性别</td></tr>
    	<tr><td width="10%">content</td><td>回复内容</td></tr>
    	</table>
    	</td>
    	</tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表查询到，1代表未查询到，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·在私信中回复</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/pmReplies/repliespm</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">pmID</td><td>私信的id</td></tr>
    	<tr><td width="10%">customerID</td><td>当前登录用户的id</td></tr>
    	<tr><td width="10%">content</td><td>私信内容</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表回复成功，1代表其他原因错误，回复失败）</td></tr>
    </table>
    <hr>
    <h3>【消息模块】</h3>
    <hr>
    <h3>·登录后查询是否有新消息</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/mm/newmsg</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>登录用户的id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表有新消息，1代表没有新消息，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·分页查看消息列表</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/mm/mmlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>登录用户的id</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">sender.nickname</td><td>发送人（例：xx赞了我的帖子的xx）</td></tr>
    	<tr><td width="10%">content</td><td>消息内容（例：赞了我的帖子，评论了我的帖子（跟帖），在帖子中回复了我）</td></tr>
    	<tr><td width="10%">sendTime</td><td>消息发送时间</td></tr>
    	<tr><td width="10%">isRead</td><td>0,1（0代表未查看，1代表已查看）</td></tr>
    	<tr><td width="10%">type</td><td>0,1,2（0代表有关鹊桥的消息，1代表有关小圈子的消息，2代表有关私信的消息）</td></tr>
    	<tr><td width="10%">postID</td><td>鹊桥帖子id，如果type=0，则点击时调用【 <a href="jiekou.jsp#postmsgapi">鹊桥帖子查看</a> 】的接口</td></tr>
    	<tr><td width="10%">xqzID</td><td>小圈子id，如果type=1，则点击时调用【 <a href="jiekou.jsp#xqzmsgapi">小圈子查看</a> 】的接口</td></tr>
    	<tr><td width="10%">pmID</td><td>如果type=2，则点击时调用【 <a href="jiekou.jsp#pmmsgapi">查看私信详情</a> 】的接口</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表返回成功，1代笔其他错误）</td></tr>
    </table>
    <hr>
    <h3>·清空消息</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/mm/clear</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">customerID</td><td>登录用户的id</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表完成清空，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>【设置模块】</h3>
    <hr>
    <h3>·修改个人信息（昵称，标签和头像图片）</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/update</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">id</td><td>登录用户的id</td></tr>
    	<tr><td width="10%">headPic</td><td>用户头像图片路径</td></tr>
    	<tr><td width="10%">nickname</td><td>昵称</td></tr>
    	<tr><td width="10%">age</td><td>年龄</td></tr>
    	<tr><td width="10%">label</td><td>标签</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表修改成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·修改密码</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/customer/updatepsw</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">id</td><td>登录用户的id</td></tr>
    	<tr><td width="10%">password</td><td>新密码</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表修改成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·查询"关于犀犀"</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/aboutUs/query</span><br><br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">content</td><td>文章内容</td></tr>
    	<tr><td width="10%">checked</td><td>0,1,2（0代表查询到，1代表未查询到，2代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·意见反馈</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/feedback/add</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">articleID</td><td>登录用户的id</td></tr>
    	<tr><td width="10%">content</td><td>反馈内容</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式}</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表反馈成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
    <h3>·系统消息查看</h3>
    <span style="font-weight: bold;">url:localhost:8080/Xixi/sm/smlist</span><br><br>
    <table width="100%">
    	<tr><td colspan="2">传入参数</td></tr>
    	<tr><td width="10%">pageIndex</td><td>页码（0代表第一页）</td></tr>
    	<tr><td width="10%">pageSize</td><td>页容量</td></tr>
    </table>
   	<br>
   	<table width="100%">
    	<tr><td colspan="2">返回参数 {json格式集合} list</td></tr>
    	<tr><td width="10%">content</td><td>消息内容</td></tr>
    	<tr><td width="10%">checked</td><td>0,1（0代表返回成功，1代表其他原因错误）</td></tr>
    </table>
    <hr>
  </body>
</html>

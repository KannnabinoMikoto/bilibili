<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>header</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
	.top{background: #00a0d8; height: 80px}
</style>	
  </head>
  <body>
   <!--头部-->
		<div class="top">
			<!--头部导航栏-->
			<div id="top_bor">
				<!--导航栏中的内容-->
				<div id="top_bor_botton">
					<a href="#" style="float: left ; display: none;"><img src=""/></a>
					<ul class="left">
						<c:forEach items="${list}" var="l">
							<li><a href="${l.urlpath }">${l.name }</a></li>
						</c:forEach>
						<li><a href="<%= request.getContextPath()%>\index.jsp">主站</a></li>
						<li><a href="#">画友</a></li>
						<li><a href="#">游戏中心</a></li>
						<li><a href="#">直播</a></li>
						<li><a href="#">商城</a></li>
						<li><a href="#">会员购</a></li>
						<li><a href="#">移动端</a></li>
						<li><a href="#">合战</a></li>
						<li><a href="#">拜年祭</a></li>
					</ul>
					<ul class="right">
						<li><a href="<%= request.getContextPath()%>\login.jsp">登陆</a></li>
						<li><a href="#">注册</a></li>
						<li id="tougao"><a href="#">投稿</a></li>
					</ul>
				</div>
			</div>
		</div>
 </body>
</html>

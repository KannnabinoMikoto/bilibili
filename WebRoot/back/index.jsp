<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getRequestURI();

    String basePath = request.getScheme() + "://"

            + request.getServerName() + ":" + request.getServerPort()

            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>B站审核系统</title>
<link rel="stylesheet" href="../css/index.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/tendina.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
</head>
<body>
	<!--顶部-->
	<div class="layout_top_header">
		<div style="float: left">
			<span
				style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">B站审核系统</span>
		</div>
		<div id="ad_setting" class="ad_setting">
			<a class="ad_setting_a" href="javascript:; "> <i
				class="icon-user glyph-icon" style="font-size: 20px"></i> <span>${user.getAccountName() }</span>
				<!-- 
                    <i class="icon-chevron-down glyph-icon"></i>
                   -->
			</a>

		</div>
	</div>
	<!--顶部结束-->
	<!--菜单-->
	<div class="layout_left_menu">
		<ul id="menu">
			 
			<li class="childUlLi"><a href="" target="menuFrame"><i
					class="glyph-icon icon-home"></i>用户管理</a>
				<ul>
					<li><a href="<%=request.getContextPath()  %>/user1"
						target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>违规用户</a></li>
					<li><a href="<%=request.getContextPath()  %>/user2" target="menuFrame"><i
							class="glyph-icon icon-chevron-right"></i>查询用户</a></li>
				</ul></li>
			
			<li class="childUlLi"><a href="user.html" target="menuFrame">
					<i class="glyph-icon icon-reorder"></i>投稿管理
			</a>
				<ul>
					<li><a href="<%=request.getContextPath()  %>/workers1" target="menuFrame"><i
							class="glyph-icon icon-chevron-right"></i>待审核队列</a></li>
					<li><a href="<%=request.getContextPath()  %>/workers2" target="menuFrame"><i
							class="glyph-icon icon-chevron-right"></i>通过审核</a></li>
				</ul></li>

		</ul>
	</div>
	<!--菜单-->
	<div id="layout_right_content" class="layout_right_content">

		<div class="route_bg">
			<a href="#">主页</a><i class="glyph-icon icon-chevron-right"></i> <a
				href="#">菜单管理</a>
		</div>
		<div class="mian_content">
			<div id="page_content">
				<iframe id="menuFrame" name="menuFrame" src="main.jsp"
					style="overflow:visible;" scrolling="yes" frameborder="0"
					width="100%" height="100%"></iframe>
			</div>
		</div>
	</div>
	<div class="layout_footer"></div>
</body>
<script type="text/javascript">
	function show(url) {
		$("#menuFrame").attr("src", url);
	}
</script>
</html>
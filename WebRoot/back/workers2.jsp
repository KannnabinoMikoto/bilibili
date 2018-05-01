<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh-cn">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户中心</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">	
</script>
</head>
<body>
	<div class="container" style="text-align: center;">
	视频审核
	</div>
	
	
	<div class="container-fluid">
		<table class="table">
  			      <tr>
			        <th>视频编号</th>
			        <th>视频名称</th>
			        <th>上传日期</th>
			        <th>视频标签</th>
			        <th>视频描述</th>
			        <th>视频封面</th>
     			</tr>
     			 <c:forEach items="${list}" var="list">
    	<tr>
	        <td>${list.videoId}</td>
	   		<td>${list.videoName}</td>
	   		<td>${list.videoDate}</td>
	        <td>${list.videoBiaoQian}</td>
	        <td>${list.videoText}</td>
	        <td><img alt="" src="${list.getVideofengman()}" width="100px" height="80px"></td>
	        <td>
	        <form action="shanchu2" method="post" id="">
	        	<input type="hidden" value="${list.videoId}" name="id" >        	
	        	<button type="submit" class="btn " onclick="return confirm('确定要删除吗?')" >删除视频</button>
	        </form>
	        </td>
        </tr>
    </c:forEach>
		</table>
	</div>
	<div class="container" style="text-align: center;"> 
		<nav aria-label="Page navigation">
<ul class="pagination">
  <li>
    <a href="javascript:void(0)" aria-label="Previous">
      <span aria-hidden="true">&laquo;</span>
    </a>
  </li>
  <li><a href="workers2?num=1">1</a></li>
  <li><a href="workers2?num=2">2</a></li>
  <li><a href="workers2?num=3">3</a></li>
  <li><a href="workers2?num=4">4</a></li>
  <li><a href="workers2?num=5">5</a></li>
  <li><a href="workers2?num=6">6</a></li>
  <li><a href="workers2?num=7">7</a></li>
  <li><a href="workers2?num=8">8</a></li>
  <li><a href="workers2?num=9">9</a></li>
  <li>
    <a href="javascript:void(0)" aria-label="Next">
      <span aria-hidden="true">&raquo;</span>
    </a>
  </li>
</ul>
</nav>
	</div>
</body>
</html>

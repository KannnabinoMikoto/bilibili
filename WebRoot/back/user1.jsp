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
	用户管理
	</div>
	<div class="container-fluid">
		<table class="table">
  			      <tr>
			        <th>用户UID</th>
			        <th>用户头像</th>
			        <th>用户昵称</th>
			        <th>禁封时间</th>
			        <th>理由</th>
			        <th>移除黑屋</th>
     			</tr>
     			 <c:forEach items="${list}" var="list">
    	<tr>
	        <td>${list.accountNo}</td>
	   		<td><img alt="" src="${list.getPicturePath()}"></td>
	        <td>${list.accountName}</td>
	        <td>${list.howLong}小时</td>
	        <td>${list.riYou}</td>
	        <td>
	        <form action="jiefeng" method="post" id="">
	        	<input type="hidden" value="${list.accountNo}" name="id" >        	
	        	<button type="submit" class="btn " >移除</button>
	        </form>
	        </td>
        </tr>
    </c:forEach>
		</table>
	</div>
</body>
</html>

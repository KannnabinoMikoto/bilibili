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
	用户搜索
	</div>
	<div class="container-fluid">
		<table class="table">
  			      <tr>
			        <th>用户UID</th>
			        <th>用户头像</th>
			        <th>用户昵称</th>
			        <th>用户性别</th>
			        <th>绑定账号</th>
			        <th>用户等级</th>
			        <th>异常状态</th>
			        <th>剩余硬币</th>
     			</tr>
     			
				
		
     			 <c:forEach items="${list}" var="list">
    	<tr>
	        <td>${list.getAccountNo()}</td>
	   		<td><img alt="" src="${list.getPicturePath()}"></td>
	        <td>${list.getAccountName()}</td>
	        <td>${list.getAccountSex()>0?'男':'女'} </td>
	        <td>${list.getAccountBandPhotoorQQ()}</td>
	        <td>${list.getAccountType()<2?'管理员':'普通用户'}</td>
	        <td>${list.getAccountExecpteOr()}</td>
	        <td>${list.getAccountyingbi()}</td>
	        <td>
	        <form action="chakanzhongxin" method="post" id=""target="_blank">
	        	<input type="hidden" value="${list.accountNo}" name="id" >        	
	        	<button type="submit" class="btn " >查看中心</button>
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
    <li><a href="javascript:void(0)">1</a></li>
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

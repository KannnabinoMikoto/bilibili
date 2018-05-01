<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>登录页面</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function changeimage(){
		document.getElementById("endd").src='yanzhegnma?ts='+new Date().getTime();
	}
</script>
</head>
<body>

	<jsp:include page="头部/header.jsp"></jsp:include>


	<div class="container" style="height: 600px;margin-top: 30px">
		<div class="title-line"
			style="width: 980px;
    height: 28px;
    margin: 0 auto;
    border-bottom: 1px solid #ddd;
    margin-bottom: 28px;">
			<span class="tit"
				style="width: 120px;
    height: 47px;
    margin: 0 auto;
    display: block;
    font-size: 40px;
    background: #fff;
    text-align: center;">登 录</span>
		</div>
		

		<div class="container" style="margin-top: 30px">
			<div class="row">
				<div class="col-md-6">
					<img alt="" src="img/二维码.png">
				</div>
				<div class="col-md-6">
					<form class="form-inline" method="post" action="<%=request.getContextPath() %>/bilibili.com">
					<h3 style="height: 5px; ">${message }</h3>
						<div class="form-group" style="margin-top: 50px;">
							<label for="exampleInputName2">账号</label> <input type="text"
								class="form-control" id="exampleInputName2" name="username"
								placeholder="你的手机号/邮箱" style="width:400px;height: 45px">
						</div>
						<br>
						<div class="form-group" style="margin-top: 50px">
							<label for="exampleInputEmail2">密码</label> <input type="password"
							name="password"
								class="form-control" id="exampleInputEmail2" placeholder="密码"
								style="width:400px;height: 45px">
						</div>
						<br>
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="yanzhegnma">
						<img alt="" src="yanzhegnma" id="endd">
						<input type="button" value="看不清换" onclick="changeimage()">
						<br>
						<br>
						<div class="checkbox" style="margin-bottom: 30px">
							<label> <input type="checkbox"> 记住密码
							</label>
						</div>
						<br>
						<button type="submit" class="btn btn-primary btn-lg"
							data-toggle="modal" data-target="#myModal">登录</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-default">还没账号？注册</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="尾部/ender.jsp"></jsp:include>

	<!-- 
 
<button type="submit" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  登录
</button>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">确认提示</h4>
      </div>
      <div class="modal-body">
      是否将密码保存在本地？
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">不保存</button>
        <button type="button" class="btn btn-primary">保存，方便下次登录</button>
      </div>
    </div>
  </div>
</div>
   -->

<% 	request.getSession().removeAttribute("message"); %>
</body>
</html>


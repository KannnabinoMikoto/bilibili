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
<title>注册页面</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- validation校验库 -->
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/messages_zh.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[name='username']").blur(function(){
			//1.确定请求路径
			var url="${pageContext.request.contextPath}/check";
			//2.确定请求参数
			var params={"username":$(this).val()};
			//3.发送Ajax请求
			$.post(url,params,function(data){
				if(data=="true"){
				$("#messages").html("用户名已占用");
					
				}else{
					$("#messages").html("恭喜您 用户名可用");
				}
			},"text");
		});
		
		$("#xieyi").click(function(){
			
			if (this.checked==true) {
				$("#zhuce").prop("disabled",false);
			}else{
				$("#zhuce").prop("disabled",true);
			}
			
		}
		);
		
		
		$("#myform").validate({
			rules:{
				username:{
					required:true,
					rangelength:[2,6]
				},
				sex:{
					required:true
				},
				userpwd:{
					required:true,
					rangelength:[5,16]
				},
				email:{
					required:true,
					email:true	
				},
				userpwd1:{
					required:true,
					equalTo:"[name='userpwd']"
				}
			},
			messages:{
				sex:{
					required:"性别项必须勾选"
				},
				username:{
					required:"用户昵称不能低于2个字段或大于6个字段"
				},
				userpwd:{
					required:"密码必须填写",
					rangelength:"密码长度必须大于5位小于12位"
				},
				email:{
					required:"邮箱必填，用于账号找回",
					email:"请填写正确的邮箱格式"	
				},
				userpwd1:{
					equalTo: "您两次输入的不相同"
				}
				
			}
		});
	}
	
	);
</script>
<style>
	
</style>
</head>
<body>
	<jsp:include page="头部/header2.jsp"></jsp:include>
	<div class="container-fluid" style="background-color: #00a0d8;text-align: center;" >
		<img alt="1" src="img/注册标头.png">
	</div>
	<!-- 这就是一条线 -->
	
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
    text-align: center;">注 册</span>
		</div>

	<!-- 这也许就是注册内容了 -->
	
	<div class="container" style="margin: 50px auto" >
	<form style="margin: 0 auto;width:460px" id="myform" method="post" action="<%=request.getContextPath() %>/user.do">
  <div class="form-group">
    <label for="exampleInputEmail1">用户昵称</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="username" placeholder="昵称 例:(哔哩哔哩)"style="width:420px;">
   	<label style="color: red" for="username" id="messages" class="error"></label>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">用户密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1"name="userpwd" placeholder="密码(6-16个字符组成，区分大小写)"style="width:420px">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword2">确认密码</label>
    <input type="password" class="form-control" id="exampleInputPassword2"name="userpwd1" placeholder="密码(6-16个字符组成，区分大小写)"style="width:420px">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">上传您的头像</label>
    <input type="file" id="exampleInputFile" name="touxiang">
    <p class="help-block">默认为初始头像</p>
	</div>
	
	<div class="form-group">
	<label >性别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 
	  <input type="radio" name="sex" id="inlineRadio2" value="0"> 男
	  <input type="radio" name="sex" id="inlineRadio3" value="1"> 女
	
	<label style="color: red" for="sex" class="error"></label>
	</div>

  <div class="form-group">
    <input type="email" class="form-control" id="exampleInputEmail2" name="email" placeholder="邮箱 例:RyuYa@gmail.com"style="width:420px;">
  </div>
  
  
  <div class="form-group">
    <label>出生年月</label>
    <input type="date" class="form-control" name="years" id="exampleInputEmail2" style="width:420px;">
  </div>
  
   <div class="form-group">
    <label>签名(用于自我介绍)</label>
    <input type="text" class="form-control" id="exampleInputEmail2" name="address" placeholder="签名 例:这个人很懒什么都没写" style="width:420px;">
  </div>
  
   <div class="form-group">
    <label>绑定手机或者QQ</label>
    <input type="text" class="form-control" name="qq" id="exampleInputEmail22" placeholder="绑定手机|QQ 例:1507502234|714111186" style="width:420px;">
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox" id="xieyi"> 我已同意<a>《哔哩哔哩弹幕网用户使用协议》</a>和<a>《哔哩哔哩弹幕网账号中心规范》</a>
    </label>
  </div>

  <button type="reset" class="btn btn-default">重置</button>
  <button type="submit" class="btn btn-primary" onclick="javascript:return confirm('确定提交？')" id="zhuce" disabled="disabled">确认注册</button>
</form>
	</div>
	
	<jsp:include page="尾部/ender.jsp"></jsp:include>
	
	
</body>
</html>


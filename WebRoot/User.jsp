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
$(function(){
	var i=true;
	if (i==true) {
		$("[name=qianming]").blur(function() {	
			//1.确定请求路径		
			//alert("收藏成功"+${user.getAccountNo()});	
			var url = "${pageContext.request.contextPath}/updateQianMing";
			//2.确定请求参数
			var params = {
				"qianming" :$("[name=qianming]").val()
			};
			//3.发送Ajax请求
			$.post(url, params, function(data) {
				if (data == "true") {
				alert("修改完成");
				}
			}, "text");
		});
	} 
	

});
	

</script>
</head>
<body>
	<jsp:include page="头部/header.jsp"></jsp:include>
	<div class="container-fluid"
		style="background-image: url('img/beijing.jpg');height: 1220px">
		<div class="container"
			style="background-color:white; ;height: 1180px;border-radius:25px;opacity :0.8;margin-top: 20px">
			<div class="row">
				<div class="col-md-8"
					style="border-radius:25px;border:1px solid;height: 1180px">
					<div class="row" style="margin: 20px auto;background-color:#fff;">
						<div class="col-md-2" style="margin-top: 20px;">
							<img src="${user.getPicturePath() }" alt="..." class="img-circle" width="100px"
								height="100px">
						</div>
						<div class="col-md-10">
							<h3>${user.getAccountName()}</h3>
							<h2>
								<input type="text" name="qianming" class="form-control" placeholder="更改签名测试" value="${user.getAccountAddress()}">
							</h2>
						</div>
					</div>
					<div class="container"
						style="border: 3px solid gray;width: 740px;margin: 20px auto"></div>


					<h3 style="color:#000;opacity :1; ">
						我的投稿 <span class="label label-default" style="color: black"></span>

					</h3>
					<div class="container " style="text-align: right;width: 740px;">
						<button type="button" class="btn btn-info" style="margin: 0 auto">更多</button>
					</div>
					<div class="container"
						style="border: 1px solid black;width: 740px;margin: 20px auto"></div>

					<div class="row" style="margin: 0 auto">
					
					<c:forEach items="${msc }" var="msc">
						<div class="col-md-4">
							<a href="video.do?av=${msc.videoId }&ty=${msc.getVideoType() }" class="thumbnail" style="height:206;width:185px;">
								<img src="${msc.getVideofengman() }" alt="...">
							</a> <a><h4>${msc.videoName }</h4></a>
							<h5>上传时间:${msc.videoDate }</h5>
						</div>
					</c:forEach>				
						
					</div>
					
					
					<h3 style="color:#000;opacity :1; ">
						审核中的投稿 <span class="label label-default" style="color: black">-</span>
					</h3>
					<div class="container " style="text-align: right;width: 740px;">
						<button type="button" class="btn btn-info" style="margin: 0 auto">更多</button>
					</div>
					<div class="container"
						style="border: 1px solid black;width: 740px;margin: 20px auto"></div>
					<div class="row" style="margin: 0 auto">
					
						<c:forEach items="${shenhe }" var="shenhe">
								<div class="col-md-4">
								<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<a href="video.do?av=${shenhe.videoId }&ty=${shenhe.getVideoType() }" class="thumbnail" style="height:206;width:185px;">
									<img src="${shenhe.getVideofengman() }" alt="...">
								</a> <a><h4>${shenhe.videoName }</h4></a>
								<h5>上传时间:${shenhe.videoDate }</h5>
							</div>
						</c:forEach>
						
					</div>
					
					
					<h3 style="color:#000;opacity :1; ">
						我的收藏 <span class="label label-default" style="color: black">-</span>
					</h3>
					<div class="container " style="text-align: right;width: 740px;">
						<button type="button" class="btn btn-info" style="margin: 0 auto">更多</button>
					</div>
					<div class="container"
						style="border: 1px solid black;width: 740px;margin: 20px auto"></div>
					<div class="row" style="margin: 0 auto">
					
						<c:forEach items="${mtg }" var="mtg">
								<div class="col-md-4">
								<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<a href="video.do?av=${mtg.videoId }&ty=${mtg.getVideoType() }" class="thumbnail" style="height:206;width:185px;">
									<img src="${mtg.getVideofengman() }" alt="...">
								</a> <a><h4>${mtg.videoName }</h4></a>
								<h5>上传时间:${mtg.videoDate }</h5>
							</div>
						</c:forEach>
						
					</div>
				</div>
				<div class="col-md-4"
					style="border-radius:25px;border:2px solid;opacity :1.9;height: 880px">

					<div class="row">
						<div class="col-md-12"
							style="border:2px solid gray;border-radius:15px; height:130px; margin-top: 10px;text-align: center;padding:20px; ">
							<a href="upload.jsp"  target="_blank">
								<button type="button" class="btn btn-primary btn-lg active">作品上传</button>
							<a>
							<br><br>
							<a href="upload.jsp"  target="_blank">
								<button type="button" class="btn btn-default">视频投稿</button>
							<a>
							<c:if test="${user.getAccountType()<2 }">
							<a href="back/index.jsp"  target="_blank">
								<button type="button" class="btn btn-default">审核管理</button>
							</a>
							</c:if>
							
						</div>
						<div class="col-md-12"
							style="border:2px solid gray;border-radius:15px;height:250px;margin-top: 10px;text-align: center;padding:20px;">
							<h2>公告</h2>
							<hr />
							<textarea class="form-control" rows="3" placeholder="编写我的公告">改不了   改不了</textarea>
						</div>
						<div class="col-md-12"
							style="border:2px solid gray;border-radius:15px;height:200px;margin-top: 10px;text-align: left;padding:20px;">
							<h5>个人信息</h5>
							<hr />
							<span class="label label-info">UID</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${user.getAccountNo() }</span>&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="label label-primary">用户等级</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${user.getAccountType()>1?'普通用户':'管理员' } </span>
							<hr>
							<span class="label label-success">生日</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${user.getAccountBirthday() }</span>&nbsp;&nbsp;&nbsp;
							<span class="label label-warning">联系</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${user.getAccountBandPhotoorQQ() }</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="尾部/ender.jsp"></jsp:include>
</body>
</html>

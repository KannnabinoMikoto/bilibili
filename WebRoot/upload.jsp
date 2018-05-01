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
<title>作品上传</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function callback(msg) {
		document.getElementById("file").outerHTML = document
				.getElementById("file").outerHTML;
		document.getElementById("msg").innerHTML = "<font color=red＞" + msg
				+ "</font＞";
	};

	window.onload = function() {
		//file文件后台上传
		
		$("#wancheng").click(function(){
		alert("上传完成");
	
		});
	
		width = 0;
		document.getElementById("shangchuan").onclick = function() {
			time = setInterval("sc()", 100);
			if (width == 100) {
			alert("上传完成");
				clearInterval(time);
			}
		};

	};

	function sc() {
		width += 2;
		document.getElementById("jindutiao").style.width = width + "%";
		document.getElementById("jindutiao").innerHTML = width + "%";
		if (width >= 100) {
			clearInterval(time);
		}
	};
</script>
</head>
<body>
	<jsp:include page="头部/header.jsp"></jsp:include>
	<div class="container" style="border-radius:25px;border:2px solid;backcolor : rgba(205,205,205,0.4);margin: 30px auto;text-align: center ;height: 590px;">
		<form action="upload"  enctype="multipart/form-data" method="post" class="form-inline">
			<div style="height: 40px;margin-top: 20px">
			<strong><h1>视频投稿</h1></strong>
			</div>
			<label for="exampleInputName2">稿件文件(必填):</label> <br>
			<br><input type="file" name="file" class="form-control" id="exampleInputName2" ><br>
			*禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件
			<div class="progress" style="width: 600px;margin: 20px auto">
				<div class="progress-bar" role="progressbar" aria-valuenow="60"
					aria-valuemin="0" aria-valuemax="100" style="width: 0%;"
					id="jindutiao">0%</div>
			</div>
			<div class="container" style="width: 600px;margin: 20px auto">
			<label for="exampleInputName2">稿件封面(必填):</label>
				<input type="file" class="form-control" id="examplenputName2" name="fengmian" >
			</div>
			 <div class="container">
					<label for="exampleInputName2">稿件标题(必填):</label>
    				<input type="text" class="form-control" id="exampleInputName2" name="biaoti" placeholder="如:(我是一个视频)">
    				<input type="hidden" name="bt" value="asdzxccv" />  
    		</div><br>
    		 <div class="container">
					<label for="exampleInputName2">投稿类型(必选):</label>
					<input type="radio" name="fenlei" value="1"><em>动画</em>
    				<input type="radio" name="fenlei" value="2"><em>电影</em>
    				<input type="radio" name="fenlei" value="3"><em>音乐</em>
    				<input type="radio" name="fenlei" value="6"><em>科技</em>
    				<input type="radio" name="fenlei" value="8"><em>其他</em>
    		</div><br>
			 <div class="container">
					<label for="exampleInputName2">添加标签(选填):</label>
    				<input type="text" class="form-control" id="exampleInputName2" name="biaoqian" placeholder="如:(标签1,标签2,标签3,)">
    		</div><br>
    		 <div class="container">
					<label for="exampleInputName2">视频描述:(选填):</label>
    				<input type="text" class="form-control" id="exampleInputName2" name="miaoshu" placeholder="如:(一段音乐视频)">
    		</div><br>
    		(多标签请用逗号隔开)<br>
			<input type="button"class="btn btn-primary"  id="shangchuan" value="视频上传"> 
			<input type="submit" class="btn btn-primary" id="wancheng" value="完成上传">
		</form>
	</div>
	<jsp:include page="尾部/ender.jsp"></jsp:include>
</body>
</html>


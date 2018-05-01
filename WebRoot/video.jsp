<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>播放</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.barrager.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
	$(function() {
		var i = 0;
		setInterval(god, 5000);
		//发送评论的ajax事件
			$("[name=plfs]").click(function() {
			//1.确定请求路径
			
			//alert("收藏成功"+${user.getAccountNo()});	
			var url = "${pageContext.request.contextPath}/pinglun";
			//2.确定请求参数
			var params = {
				"plnr" :$("[name=pl]").val(),
				"plvid" :${av.videoId },
				"uid" :${user.getAccountNo()  }
			};
			/*
			<ul class='media-list' style='margin-top: 50px'>
				<li class='media'>
					<div class='media-left'>
						<a href='#'> <img src='${user.getPicturePath() }' alt=''
							class='img-circle'>
						</a>
					</div>
					<div class='media-body'>
						<h4 class='media-heading'>${user.getAccountName() }</h4>
						$('[name=pl]').val()
						<p style='text-align: right;'>发送日期时间:"+getDate()+"</p>
					</div>
				</li>
			</ul>
			<hr>
			*/
			//3.发送Ajax请求
			$.post(url, params, function(data) {
				if (data == "true") {
					alert("发送成功");
					var plnra=$("[name=pl]").val();
					var mydate = new Date();
					mydate.getFullYear(); //获取完整的年份(4位,1970-????)
					mydate.getMonth(); //获取当前月份(0-11,0代表1月)
					mydate.getDate(); //获取当前日(1-31)
					$("#plk").prepend("<ul class='media-list' style='margin-top: 50px'><li class='media'><div class='media-left'><a href='#'> <img src='${user.getPicturePath() }' alt=''class='img-circle'></a></div><div class='media-body'><h4 class='media-heading'>${user.getAccountName() }</h4>"+plnra+"<p style='text-align: right;'>发送日期时间:"+mydate+"</p></div></li></ul><hr>");
					$("[name=pl]").val("");				
				}else{
					alert("发送内容不能为空");
				}
			}, "text");
		});
		
		$("[name=yingbi]").click(function() {
			//1.确定请求路径
			
			//alert("收藏成功"+${user.getAccountNo()});	
			var url = "${pageContext.request.contextPath}/toubi";
			//2.确定请求参数
			var params = {
				"videoid" : ${av.videoId }
			};
			//3.发送Ajax请求
			$.post(url, params, function(data) {
				if (data == "true") {
		
				alert("+100S投币成功");
				}
			}, "text");
		});
		//收藏ajax
		var flag = true;
		$("[name=shoucang]").click(function() {
			if (flag) {
			$(this).html("取消收藏");
				//1.确定请求路径
				var url = "${pageContext.request.contextPath}/shoucang";
				//2.确定请求参数
				var params = {
					"vedioId" : ${av.videoId }
				};
				//3.发送Ajax请求
				$.post(url, params, function(data) {
					if (data == "true") {
						
					alert("收藏成功");				
					}else{
					alert("请先登录");
				}
				}, "text");
				flag = false;
			} 
			else
			 {
				alert("取消收藏成功");
				$(this).html("收藏");
				flag = true;
			}
		});
		
		
		
		/*
		
		$("[name=shoucang]").click(function() {
			//1.确定请求路径
			var url = "${pageContext.request.contextPath}/shoucang";
			//2.确定请求参数
			var params = {
				"vedioId" : ${av.videoId }
			};
			//3.发送Ajax请求
			$.post(url, params, function(data) {
				if (data == "true") {

					alert("收藏成功");
				}
			}, "text");
		});
		*/

		$("#tj").click(function() {
			//1.确定请求路径

			var url = "${pageContext.request.contextPath}/adddanmu";
			//2.确定请求参数
			var params = {
				"vedioId" : $(this).val()
			};
			//3.发送Ajax请求
			$.post(url, params, function(data) {
				if (data == "true") {

				} else {
					$("#danmukuang").val("");
				}
			}, "text");

			$('canvas').barrager([ {
				"msg" : $("#danmukuang").val()
			} ]);
		});

	});

	function god() {
		$('canvas').barrager([ {
			"msg" : "up能出一个1000元左右家"
		}, {
			"msg" : "你们继续吧，我是真的看不懂的啊"
		}, {
			"msg" : "看了半天极品飞车19呢"
		}, {
			"msg" : "瞅瞅"
		}, {
			"msg" : "什么鬼 万一呢1"
		}, {
			"msg" : "各种神机。。。"
		}, {
			"msg" : "顶顶"
		} ]);
	}
</script>
<style type="text/css">
.nulll {
	width: 846px;
	height: 366px;
	border: 0px solid red;
}

video {
	width: 846px;
	height: 100%;
	position: relative;
	top: -472px;
	left: 0px;
	display: block;
}
</style>
<style type="text/css">
.navbar .nav>li .dropdown-menu {
	margin: 0;
}

body {
	position: relative;
}

.navbar .nav>li:hover .dropdown-menu {
	display: block;
}

.nav li {
	float: left
}

#zhongjian {
	border: 1px solid red;
	width: 1900px;
	height: 790px;
	margin: 0 auto
}

.span12 {
	margin-top: 10px
}

.navbar-form {
	margin-top: 0px
}
$('
#carousel-example-generic


')
.collapse


({
toggle


:false


}
)
</style>

</head>
<body>

	<jsp:include page="头部/header.jsp"></jsp:include>

	<div class="container" style="margin-top: 10px">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<ul class="nav">
						<li class="dropdown"><a href="#menu3">首页</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">注销</a></li>

							</ul></li>

						<li class="dropdown"><a href="#menu3">番剧</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">国创</a>
							<ul class="dropdown-menu">

							</ul></li>
						</li>
						<li class="dropdown"><a href="#menu3">音乐</a>
							<ul class="dropdown-menu">

							</ul></li>
						</li>
						<li class="dropdown"><a href="#menu3">舞蹈</a>
							<ul class="dropdown-menu">

							</ul></li>

						<li class="dropdown"><a href="#menu3">游戏</a>
							<ul class="dropdown-menu">

							</ul></li>

						<li class="dropdown"><a href="#menu3">科技</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">生活</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">时尚</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">广告</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">娱乐</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li class="dropdown"><a href="#menu3">影视</a>
							<ul class="dropdown-menu">

							</ul></li>
						<li>
							<button type="button" class="btn btn-default"
								data-toggle="tooltip" data-placement="top" title="排行榜">排行榜</button>
						</li>
						<li>
							<form class="navbar-form navbar-right" style="margin-right: 0px"
								method="get" action="sousuo">
								<div class="form-group" style="margin-right: 0px">
									<input type="text" class="form-control" placeholder="视频名称">
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
						</li>
						<li><img alt="" src="img/zj.gif"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<input type="hidden" value="${av.videoId }" id="videoid">
				<h3>${av.videoName }</h3>
				<h4>
					<small>视频分区:${typename}</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>
						投稿日期:${av.videoDate }</small>
				</h4>
				<div class="row">
					<div class="col-md-2">总播放数:1</div>
					<div class="col-md-2">总弹幕数:28</div>
					<div class="col-md-2">
						<span class="label label-warning">硬币:</span>${av.videoyingbi }
					</div>
					<div class="col-md-3">
						<span class="label label-info">收藏数:</span>${av.videoshoucang }
					</div>
					<div class="col-md-3">
						<a href="javascript:void(0)" class="btn btn-primary"
							style="background-color: pink" role="button" name="shoucang">收藏</a>
						<a href="javascript:void(0)" class="btn btn-primary"
							style="background-color: green" role="button" name="yingbi">扔硬币</a>
					</div>
				</div>
			</div>
			<div class="col-md-4" style="padding-top: 10px">
				<div class="row">
					<div class="col-lg-3">
						<img src="${ui.getPicturePath() }" alt="..." class="img-circle">
					</div>
					<div class="col-lg-9">
						<mark>
							<a href="#">${ui.getAccountName() }</a>
						</mark>
						<h5>${ui.getAccountAddress() }</h5>
						<p>
							<a href="javascript:void(0)" class="btn btn-primary" role="button">别..</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid"
		style="background-color: #f6f9fa;margin-top: 30px">

		<div class="row" style="margin-top: 30px">
			<div class="col-md-2"></div>
			<div class="col-md-6">
				<div class="nulll"
					style="padding: 8px;border:1px solid black;width:866px;background-color: black">
					<canvas
						style="width: 846px;height: 428px;background-color:;position:relative; z-index: 999"></canvas>
					<video controls="controls" autoplay="autoplay"
						src="${av.videoPath }" id="move">
					</video>
				</div>
			</div>

			<div class="col-md-1" style="margin-left: -50px">
				<!--
				<button id="qc" type="button"
				style="display:1; width: 100px;height: 50px;font-size: 30px;">清除</button>  
				
					<button id="tj" type="button"
					style="display:1; width: 100px;height: 50px;font-size: 30px;">发送弹幕</button>
				<br>
				-->



				<div
					style="overflow-x: hidden; overflow-y:scroll;  width: 450px;height: 560px;background-color: white;">
					<!-- table start -->
					<table>
						<table class="table ">
							<thead>
								<tr style="width: 100px">
									<th>发送时间</th>
									<th>弹幕内容</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lb }" var="lb">
									<tr>
										<td>${lb.vedioBoomtime }</td>
										<td rowspan="1">${lb.vedioBoomText }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</table>
					<!-- table end -->
				</div>


			</div>
			<div class="container" style="position:relative;  top:-60px">
				<div class="col-lg-8" style="margin-top: 20px">
					<div class="input-group">
						<input type="text" class="form-control" id="danmukuang"
							placeholder="输入你要发送的弹幕点击发送..."> <span
							class="input-group-btn">
							<button id="tj" class="btn btn-default" type="button">发送弹幕!</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /.col-lg-6 -->
			</div>

		</div>


	</div>


	<div class="container">
		<nav aria-label="..">
			<ul class="pager" style="margin-left: 0px;text-align: left;">
				<c:forEach items="${bq }" var="b">
					<li><a href="#">${b}</a></li>
				</c:forEach>

			</ul>
		</nav>
		<h4>
			<small><a>查看标签修改记录</a></small><span>&nbsp;丨&nbsp;</span><small><a>查看标签使用说明</a></small>
		</h4>
		<hr>
		<h4>
			<small>${av.videoText}</small><span>
				<hr>
	</div>

	<!-- 评论区 -->
	<div class="container">

		<div class="page-header">
			<h1>
				评论<small></small>
			</h1>
		</div>




		<div class="container">
			<div class="row">
				<div class="col-md-1">
					<a href="#"> <img src="${user.getPicturePath() }" alt=""
						class="img-circle">
					</a>
				</div>
				<div class="col-md-10">

					<c:if test="${user == null or user == '' }" var="a">
						<textarea class="form-control" rows="3" readonly="readonly"
							placeholder="请登录之后发布言论"></textarea>
					</c:if>
					<c:if test="${not a }">
						<textarea class="form-control" rows="3" placeholder="请输入评论" name="pl"></textarea>
					</c:if>
				</div>

				<div class="col-md-1">
					<c:if test="${user == null or user == '' }" var="a">
				<button type="button" class="btn btn-info"
						style="height: 76px;width: 90px" name="plfs" disabled="disabled">发送</button>
					</c:if>
					<c:if test="${not a }">
						<button type="button" class="btn btn-info"
						style="height: 76px;width: 90px" name="plfs">发送</button>
					</c:if>
				
					
				</div>
			</div>
		</div>
<div class="container" id="plk">
		<c:forEach items="${lpl }" var="lpl">
			<ul class="media-list" style="margin-top: 50px">
				<li class="media">
					<div class="media-left">
						<a href="#"> <img src="${lpl.picturePath }" alt=""
							class="img-circle">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">${lpl.vediotaolunUid }</h4>
						${lpl.vediotaolunText }
						<p style="text-align: right;">发送日期时间:${lpl.vediotaoluntime }</p>
					</div>
				</li>
			</ul>
			<hr>
		</c:forEach>


		<hr>
</div>
		<jsp:include page="尾部/ender.jsp"></jsp:include>
</body>
</html>


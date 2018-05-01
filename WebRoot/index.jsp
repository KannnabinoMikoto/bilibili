<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>哔哩哔哩 (゜-゜)つロ 干杯~-bilibili</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/iRoiRo.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

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
<script type="text/javascript">
	$(function() {
		
		$("[name=shoucang]").click(function(){
			//1.确定请求路径
			var url="${pageContext.request.contextPath}/shoucang";
			//2.确定请求参数
			var params={"vedioId":$(this).find("[name=chuandi]").val()};
			//3.发送Ajax请求
			$.post(url,params,function(data){
				if(data=="true"){	
					alert("收藏成功");				
				}else{
					alert("请先登录");
				}
			},"text");
		});
		
		
		$(".tuiguangfugai").hover(function() {

			$(this).find("[class=tuiguangfugai1]").css("display", "");
		}, function() { //back
			$(this).find("[class=tuiguangfugai1]").css("display", "none");
		});

		$(".gundongfugai").hover(function() {

			$(this).find("[class=fugai]").css("display", "");
		}, function() { //back
			$(this).find("[class=fugai]").css("display", "none");
		});

		time = setInterval("showAd()", 1000);
	});
	function showAd() {
		$("#guanggao").show(1000);
		clearInterval(time);
		//time=setInterval("hiddenAd()", 2000);
	}
	function hiddenAd() {
		$("#guanggao").hide();
		clearInterval(time);
	}
</script>
</head>
<body data-spy="scroll" data-target="#navbar-example">
	<jsp:include page="头部/header.jsp"></jsp:include>

	<div class="container" style="margin-top: 10px">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<ul class="nav">
						<li class="dropdown"><a href="show.do">首页</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">二级菜单</a></li>
							</ul></li>

						<li class="dropdown"><a href="#menu3">番剧</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">国创</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						</li>
						<li class="dropdown"><a href="#menu3">音乐</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						</li>
						<li class="dropdown"><a href="#menu3">舞蹈</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>

						<li class="dropdown"><a href="#menu3">游戏</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>

						<li class="dropdown"><a href="#menu3">科技</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">生活</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">时尚</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">广告</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">娱乐</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li class="dropdown"><a href="#menu3">影视</a>
							<ul class="dropdown-menu">
								<li><a href="#menu7">Menu7</a></li>
								<li><a href="#menu8">Menu8</a></li>
							</ul></li>
						<li>
							<button type="button" class="btn btn-default"
								data-toggle="tooltip" data-placement="top" title="排行榜">排行榜</button>
						</li>
						<li>
							<form class="navbar-form navbar-right" style="margin-right: 0px"
								method="get" action="sousuo">
								<div class="form-group" style="margin-right: 0px">
									<input type="text" class="form-control" name="ssname" placeholder="视频名称">
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

	<!--推荐部分    4X3  -->
	<div class="container">
		<div class="row">
			<!-- 这是首页的左边的轮播 -->
			<div class="col-lg-5">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox"
						style="width: 100%;height: 246px">
						<div class="item active">
							<img src="${guanggao[0].guanggaopath }" alt=""
								style="width: 100%;"> <strong>${guanggao[0].guanggaomiaoshu}
							</strong>
						</div>
						<div class="item">
							<img src="${guanggao[1].guanggaopath }" alt=""
								style="width: 100%;"> <strong>${guanggao[1].guanggaomiaoshu}
							</strong>
						</div>
						<div class="item">
							<img src="${guanggao[2].guanggaopath }" alt=""
								style="width: 100%;"> <strong>${guanggao[2].guanggaomiaoshu}
							</strong>
						</div>
						<div class="item">
							<img src="${guanggao[3].guanggaopath }" alt=""
								style="width: 100%;"> <strong>${guanggao[3].guanggaomiaoshu}
							</strong>
						</div>
						<div class="item">
							<img src="${guanggao[4].guanggaopath }" alt=""
								style="width: 100%;"> <strong>${guanggao[4].guanggaomiaoshu}
							</strong>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">0</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">1</span>
					</a>
				</div>
			</div>
			<!-- 这是首页的右边的轮播 -->
			<div class="col-lg-7">
				<div>
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<!-- 轮播开始 -->
							<div class="item active">
								<div class="row">
									<c:forEach items="${listlunbo}" var="ll">
										<div class="col-xs-6 col-lg-3 gundongfugai"
											style="width: 25%;height: 150px">

											<a href="video.do?av=${ll.videoId }&ty=${ll.getVideoType() }" class="thumbnail"> <img
												src="${ll.getVideofengman() }" alt="..."> <span>${ll.videoName }</span>
											</a>
											<div class="fugai"
												style="background-color:white;width:132px;height:88px; opacity:0.8;position: absolute;z-index:9999;left: 20px;top: 2px;display: none;">
												<p>
													<strong>硬币数量:${ll.videoyingbi }</strong>
												</p>
												<p>
													<strong>发布日期:${ll.videoDate }</strong>
												</p>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<div class="item">
								<div class="row">
									<c:forEach items="${donghua}" var="dh">
										<div class="col-xs-6 col-lg-3 gundongfugai">

											<a href="video.do?av=${dh.videoId }&ty=${dh.getVideoType() }" class="thumbnail"> <img
												src="${dh.getVideofengman() }" alt="..."> <span>${dh.videoName }</span>
											</a>
											<div class="fugai"
												style="background-color:white;width:132px;height:88px; opacity:0.8;position: absolute;z-index:9999;left: 20px;top: 2px;display: none;">
												<p>
													<strong>硬币数量:${dh.videoyingbi }</strong>
												</p>
												<p>
													<strong>发布日期:${dh.videoDate }</strong>
												</p>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 推广部分 -->
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-md-12">
						<h1>
							推广 &nbsp;&nbsp;&nbsp;<span style="font-size: 16px"><a>一起来为真爱应援打call！</a></span>
						</h1>
					</div>

					<c:forEach items="${tuijian }" var="tj">
						<div class="col-lg-3 tuiguangfugai">
							<a href="video.do?av=${tj.videoId }&ty=${tj.getVideoType() }" class="thumbnail"> <img
								src="${tj.getVideofengman() }" alt="..."> <span>${tj.videoName }</span>
							</a>
							<div class="tuiguangfugai1" name="fudong"
								style="display:none;background-color:white;width:159px;height:102px; opacity:0.8;position: absolute;z-index:9999;left: 20px;top: 2px;">
								<p>
									<strong>硬币数量:${tj.videoyingbi }</strong>
								</p>
								<p>
									<strong>发布日期:${tj.videoDate }</strong>
								</p>
							</div>
						</div>
					</c:forEach>


				</div>
			</div>
			<div class="col-lg-4" style="text-align: right;">
				<div class="col-md-12">
					<div class="btn-group" role="group" aria-label="...">
						<button type="button" class="btn btn-default">在线人数:1</button>
						<button type="button" class="btn btn-default">最新投稿：[86]</button>
					</div>
				</div>
				<div class="col-md-12" style="margin-top: 5px">
					<img src="img/7.webp" alt="..." class="img-rounded" width="326px">
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 广告 -->
	<div class="container" style="margin-top: 30px">
		<img alt="" src="img/eaa9ee4b514cec27904a43ab1b0b7707.jpg"
			width="100%" id="guanggao" style="display: none;">
	</div>
	<!-- 新番更新 -->
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-md-9">
				<div>
					<ul class="nav nav-tabs" role="tablist">
						<li><strong
							style="text-align: center; font-style: normal;font-size: 28px">番剧推广&nbsp;&nbsp;&nbsp;</strong></li>
						<li role="presentation" class="active"><a href="#home"
							aria-controls="home" role="tab" data-toggle="tab">最新</a></li>
						<li role="presentation"><a href="#profile"
							aria-controls="profile" role="tab" data-toggle="tab">周一</a></li>
						<li role="presentation"><a href="#messages"
							aria-controls="messages" role="tab" data-toggle="tab">周二</a></li>
						<li role="presentation"><a href="#settings"
							aria-controls="settings" role="tab" data-toggle="tab">周三</a></li>
						<li role="presentation"><a href="#settings1"
							aria-controls="settings1" role="tab" data-toggle="tab">周四</a></li>
						<li role="presentation"><a href="#settings2"
							aria-controls="settings2" role="tab" data-toggle="tab">周五</a></li>
						<li role="presentation"><a href="#settings3"
							aria-controls="settings3" role="tab" data-toggle="tab">周六</a></li>
						<li role="presentation"><a href="#settings4"
							aria-controls="settings4" role="tab" data-toggle="tab">周日</a></li>
						<p>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
								class="btn btn-primary btn-lg" href="#" role="button">新番时间表</a>
						</p>
					</ul>

					<!-- Tab panes -->

					<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="home">
							<div class="row">
								<c:forEach items="${z0 }" var="z0">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z0.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z0.videoName }</h3>
														<p>${z0.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">
															<input type="hidden" name="chuandi" value="${z0.videoId }"><span name="yi"></span>收藏</a>
															<a href="video.do?av=${z0.videoId }&ty=${z0.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>

						</div>
						<div role="tabpanel" class="tab-pane" id="profile">
							<div class="row">
								<c:forEach items="${z1 }" var="z1">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z1.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z1.videoName }</h3>
														<p>${z1.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z1.videoId }&ty=${z1.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="messages">
							<div class="row">
								<c:forEach items="${z2 }" var="z2">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z2.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z2.videoName }</h3>
														<p>${z2.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z2.videoId }&ty=${z2.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings">
							<div class="row">
								<c:forEach items="${z3 }" var="z3">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z3.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z3.videoName }</h3>
														<p>${z3.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z3.videoId }&ty=${z3.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings1">
							<div class="row">
								<c:forEach items="${z4 }" var="z4">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z4.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z4.videoName }</h3>
														<p>${z4.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z4.videoId }&ty=${z4.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings2">
							<div class="row">
								<c:forEach items="${z5 }" var="z5">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z5.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z5.videoName }</h3>
														<p>${z5.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z5.videoId }&ty=${z5.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings3">
							<div class="row">
								<c:forEach items="${z6 }" var="z6">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z6.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z6.videoName }</h3>
														<p>${z6.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z6.videoId }&ty=${z6.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="settings4">
							<div class="row">
								<c:forEach items="${z7 }" var="z7">
									<div class="col-md-3">
										<!-- 最新更新模块 -->
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<div class="thumbnail" style="width:200px;height: 450px">
													<img src="${z7.getVideofengman() }" alt="...">
													<div class="caption">
														<h3>${z7.videoName }</h3>
														<p>${z7.videoText }</p>
														<p>
															<a href="javascript:void(0)" class="btn btn-primary" role="button" name="shoucang">收藏</a>
															<a href="video.do?av=${z7.videoId }&ty=${z7.getVideoType() }"
																class="btn btn-default" role="button">在线观看</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="container">
							<!-- 
						<nav aria-label="Page navigation" style="margin-top: -30px" ;>
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
						
				 -->
						</div>
					</div>

				</div>

			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>排行</th>
							<th style="text-align: right;">
								<!-- Single button -->
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										一周内 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">三天内</a></li>
									</ul>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${tz8 }" var="tz8">
							<tr>
								<th scope="row">top</th>
								<td><a href="video.do?av=${tz8.videoId }&ty=${tz8.getVideoType() }">${tz8.videoName }</a></td>
							</tr>
						</c:forEach>


						<tr>
							<th scope="row"></th>
							<td style="text-align: right;">
								<button type="button" class="btn btn-default">查看更多</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<!-- 广告 -->
	<div class="container" style="margin-top: 30px">
		<img alt="" src="img/广告长.png" width="100%" id="guanggao"
			style="display: 1none;">
	</div>
	<!-- 科技分区 -->
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-md-9">
				<div>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li><strong
							style="text-align: center; font-style: normal;font-size: 28px">科技区&nbsp;&nbsp;&nbsp;</strong></li>

						<p style="text-align: right;">
							<a class="btn btn-primary btn-lg" href="more" role="button">查看更多</a>
						</p>
					</ul>
				</div>
				<div class="row" style="margin-top: 26px">
					<c:forEach items="${keji}" var="kj">
						<div class="col-xs-6 col-lg-3 gundongfugai thumbnail"
							style="width: 25%;height: 150px">

							<a href="video.do?av=${kj.videoId }&ty=${kj.getVideoType() }" class="thumbnail"> <img
								src="${kj.getVideofengman() }" alt="..."> <span>${kj.videoName }</span>
							</a>
							<div class="fugai"
								style="text-align:inherit; background-color:white;width:200px;height:130px; opacity:0.8;position: absolute;z-index:9999;left: 9px;top: 5px;display: none;">
								<p>
									<strong>硬币数量:${kj.videoyingbi }</strong>
								</p>
								<p>
									<strong>发布日期:${kj.videoDate }</strong>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>排行</th>
							<th style="text-align: right;">
								<!-- Single button -->
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										一周内 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">三天内</a></li>
									</ul>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${tkeji }" var="tkeji">
							<tr>
								<th scope="row">top</th>
								<td><a href="video.do?av=${tkeji.videoId }&ty=${tkeji.getVideoType() }">${tkeji.videoName }</a></td>
							</tr>
						</c:forEach>

						<tr>
							<th scope="row"></th>
							<td style="text-align: right;">
								<button type="button" class="btn btn-default">查看更多</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<!-- 音乐分区 -->
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-md-9">
				<div>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li><strong
							style="text-align: center; font-style: normal;font-size: 28px">音乐区&nbsp;&nbsp;&nbsp;</strong></li>

						<p style="text-align: right;">
							<a class="btn btn-primary btn-lg" href="more" role="button">查看更多</a>
						</p>
					</ul>
				</div>
				<div class="row" style="margin-top: 26px">
					<c:forEach items="${listlunbo}" var="lb">
						<div class="col-xs-6 col-lg-3 gundongfugai thumbnail"
							style="width: 25%;height: 150px">

							<a href="video.do?av=${lb.videoId }&ty=${lb.getVideoType() }" class="thumbnail"> <img
								src="${lb.getVideofengman() }" alt="..."> <span>${lb.videoName }</span>
							</a>
							<div class="fugai"
								style="text-align:inherit; background-color:white;width:200px;height:130px; opacity:0.8;position: absolute;z-index:9999;left: 9px;top: 5px;display: none;">
								<p>
									<strong>硬币数量:${lb.videoyingbi }</strong>
								</p>
								<p>
									<strong>发布日期:${lb.videoDate }</strong>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>排行</th>
							<th style="text-align: right;">
								<!-- Single button -->
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										一周内 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">三天内</a></li>
									</ul>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${tyinyue }" var="tyinyue">
							<tr>
								<th scope="row">top</th>
								<td><a href="video.do?av=${tyinyue.videoId }&ty=${tyinyue.getVideoType() }">${tyinyue.videoName }</a></td>
							</tr>
						</c:forEach>
						<tr>
							<th scope="row"></th>
							<td style="text-align: right;">
								<button type="button" class="btn btn-default">查看更多</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<!-- 动画分区 -->
	<div class="container" style="margin-top: 40px">
		<div class="row">
			<div class="col-md-9">
				<div>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li><strong
							style="text-align: center; font-style: normal;font-size: 28px">动画区&nbsp;&nbsp;&nbsp;</strong></li>

						<p style="text-align: right;">
							<a class="btn btn-primary btn-lg" href="more" role="button">查看更多</a>
						</p>
					</ul>
				</div>
				<div class="row" style="margin-top: 26px">
					<c:forEach items="${donghua}" var="dh">
						<div class="col-xs-6 col-lg-3 gundongfugai thumbnail"
							style="width: 25%;height: 150px">

							<a href="video.do?av=${dh.videoId }&ty=${dh.getVideoType() }" class="thumbnail"> <img
								src="${dh.getVideofengman() }" alt="..."> <span>${dh.videoName }</span>
							</a>
							<div class="fugai"
								style="text-align:inherit; background-color:white;width:200px;height:130px; opacity:0.8;position: absolute;z-index:9999;left: 9px;top: 5px;display: none;">
								<p>
									<strong>硬币数量:${dh.videoyingbi }</strong>
								</p>
								<p>
									<strong>发布日期:${dh.videoDate }</strong>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>排行</th>
							<th style="text-align: right;">
								<!-- Single button -->
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										一周内 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">三天内</a></li>
									</ul>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${tdonghua }" var="tdonghua">
							<tr>
								<th scope="row">top</th>
								<td><a href="video.do?av=${tdonghua.videoId }&ty=${tdonghua.getVideoType() }">${tdonghua.videoName }</a></td>
							</tr>
						</c:forEach>

						<tr>
							<th scope="row"></th>
							<td style="text-align: right;">
								<button type="button" class="btn btn-default">查看更多</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<!-- 尾部 -->
	<jsp:include page="尾部/ender.jsp"></jsp:include>


	<!--
   <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
  -->

</body>
</html>


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
<title>搜索结果</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="assets/css/switcher.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link href="assets/css/social.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet" id="colors">
<!-- !important THIS STYLE CSS ON BOTTOM OF STYLEs LIST-->
<link href="assets/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
<link href="assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">	
</script>
<style type="text/css">
.top{background: #fff}
</style>
</head>
<body style="background-color: #fafafa">

	
		
	<jsp:include page="头部/header.jsp"></jsp:include>
<div class="container">
<form class="navbar-form navbar-right" style="margin-right: 0px"
								method="get" action="sousuo">
								<div class="form-group" style="margin-right: 0px">
									<input type="text" class="form-control" name="ssname" placeholder="最新视频名称">
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
</div>
	<div class="container" style="width:1260px">
		<!-- FILTER-->

		<div class="color-bottom-line center">
			<div class="line-proj center">
				<div class="proj">


					<div id="filters">
						<a href="#" data-filter=".jijeguo" class="ione-col">搜索结果</a>
					</div>
				</div>
			</div>
		</div>

		<div id="container-folio" class="row ufilter">
			<!-- !important! => DONT REMOVE class="ufilter"-->


			<div id="portfolio" class="row">
				
			
				<!-- 科技 -->
				<c:forEach items="${list }" var="list">
				<div class="span3  project-item kejji box">
					<div class="thumbnail">


						<div class="sample project-item-image-container">
						<a href="video.do?av=${list.videoId }&ty=${list.getVideoType() }"><img src="${list.getVideofengman() }" alt="" /></a>
							
							
						</div>


						<div class="caption">
							<div class="transit-to-top">
								<h3 class="p-title standart-h3title">
									视频名称:${list.videoName } <small>收藏数:${list.videoshoucang }</small>
								</h3>
								<p class="caption-descr">
								<div class="widget_nav_menu">
									<div class="phone-info">
										<i class="fa-icon-phone-sign"></i>上传送日期:${list.videoDate }
									</div>
									</p>
								</div>
							</div>

						</div>

					</div>
				</div>
				</c:forEach>
				
			
			


			</div>
			<!-- END ROW-->

		</div>
		<!-- END CONTENT CONTAINER -->


	</div>

	<jsp:include page="尾部/ender.jsp"></jsp:include>


	<script src="assets/js/jquery.js" type="text/javascript"></script>
	<script src="assets/js/google-code-prettify/prettify.js"
		type="text/javascript"></script>
	<script src="assets/js/bootstrap-transition.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-alert.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-modal.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-dropdown.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-scrollspy.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-tab.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-tooltip.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-popover.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-button.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-carousel.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-typeahead.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-affix.js" type="text/javascript"></script>
	<script src="assets/js/application.js" type="text/javascript"></script>
	<!-- END BOOTSTRAP SCRIPTS -->
	<script type="text/javascript" src="assets/js/jquery.easing.js"></script>
	<script type="text/javascript" src="assets/js/jquery.transit.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.waitforimages.js"></script>
	<script type="text/javascript" src="assets/js/jquery.isotope.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<script src="assets/js/superfish.js" type="text/javascript"></script>
	<script src="assets/js/custom.js" type="text/javascript"></script>
	<script src="assets/js/jquery.ui.totop.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/switcher.js"></script>
	<script>
		jQuery.noConflict()(
				function($) {
					var $container = $('#container-folio');

					if ($container.length) {
						$container.waitForImages(function() {

							// initialize isotope
							$container.isotope({
								itemSelector : '.box',
								layoutMode : 'fitRows'
							});

							// filter items when filter link is clicked
							$('#filters a').click(
									function() {
										var selector = $(this).attr(
												'data-filter');
										$container.isotope({
											filter : selector
										});
										$(this).removeClass('active').addClass(
												'active').siblings()
												.removeClass('active all');

										return false;
									});

						}, null, true);
					}
				});
	</script>


</body>
</html>


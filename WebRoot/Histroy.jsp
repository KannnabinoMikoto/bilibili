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
<title>我的播放历史</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#shanchu").click(function(){
			//1.确定请求路径
				//alert("收藏成功"+${user.getAccountNo()});	
			var url="${pageContext.request.contextPath}/deleteLishi";
			//2.确定请求参数
			var params={"lishiid":${user.getAccountNo()}};
			//3.发送Ajax请求
			$.post(url,params,function(data){
				if(data=="true"){
				$('tbody').remove();
				alert("删除成功");				
				}
			},"text");
		});
		
	}
	
	);
</script>
</head>
<body>

	<jsp:include page="头部/header.jsp"></jsp:include>

	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th><h2 style="color: green">播放历史</h2></th>
					<th style="text-align: right;">

						<button type="button" class="btn btn-info" id="shanchu" >清空历史记录</button>
					</th>
				</tr>

			</thead>
			
			<tbody style="text-align: center;margin-top: 30px">
			
					<c:forEach items="${listls }" var="listls">
						<tr>
							<td>
								<p class="lead">时间:${listls.vediohistroyvediotime }</p>
							</td>
							<td colspan="2">
								<div class="row">
									<div class="col-md-3">
										<a><img src="${listls.videofengman }" alt="..."
											class="img-rounded" width="200px" height="100px"></a>
									</div>
									<div class="col-md-8">
										<div class="row">
											<div class="col-md-12" style="text-align: left;">
												<a href="#"><strong>${listls.videoName }</strong></a>
											</div>
											<div class="col-md-12">
												<button type="button" class="close" aria-label="Close">
													<span aria-hidden="true">&times;</span>
													<input type="hidden" value="${listls.videoName }" id="ycid">
												</button>
												
											</div>
											<div class="col-md-6" style="text-align: left;">
												看到00:05<span> </span> <span> </span>
											</div>
											<div class="col-md-6" style="text-align: left;">作者:${listls.accountName }|分区:${listls.videoTypeName }</div>
											<div class="col-md-12">
												<hr>
											</div>
										</div>

									</div>
								</div>
							</td>
						</tr>
					</c:forEach>
				


			</tbody>
		</table>
		<div class="container" style="text-align: center;">
			
				
				<img alt="" src="img/historyend.png">
			
			</div>
			
	</div>

	<jsp:include page="尾部/ender.jsp"></jsp:include>




</body>
</html>


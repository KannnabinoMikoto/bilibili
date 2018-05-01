<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh-cn">

  <head>
    <meta charset="UTF-8">
    <title>Document</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/jquery.barrager.js"></script>

    <script type="text/javascript">

        $(function(){
            $('canvas').barrager([{"msg":"测试弹幕"},{"msg":"测试弹幕"},{"msg":"测试弹幕"}]);
            $('#qc').click(function(){
               $('canvas').barrager("clear");
            });
            $('#tj').click(function(){
                $('canvas').barrager([{"msg":"发射弹幕测试"}]);
            });
           setInterval(function(){
                $('canvas').barrager([{"msg":"读取弹幕测试"}]);
            },1000);
        });
    </script>
	<style type="text/css">
	.nulll{width: 846px;height: 566px;border:1px solid red;}
	video{width: 846px;height: 100%; position: relative; top: -566px;display: block;}
	</style>
  </head>
  
  <body>
  
    <button id="qc" type="button" style="display:none; width: 100px;height: 50px;font-size: 30px;">清除</button>
	<button id="tj" type="button" style="display:none; width: 100px;height: 50px;font-size: 30px;">添加</button><br>
<div class="nulll">
	<canvas style="width: 846px;height: 566px;background-color:;position:relative; z-index: 999"></canvas>
	<video autoplay="autoplay" src="视频\上传视频.mp4" id="move" >
	</video>
</div>
  </body>
</html>

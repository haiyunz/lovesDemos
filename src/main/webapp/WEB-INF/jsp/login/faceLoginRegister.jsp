<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<title>人脸注册</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/js/Particleground.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/js/button.js"></script>
<script src="${pageContext.request.contextPath}/css/_buttons.scss"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap.css"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/loading.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loading.css">
<link rel="stylesheet"	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/js/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/js/Particleground.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/js/button.js"></script>
<script src="${pageContext.request.contextPath}/css/_buttons.scss"></script>
<script src="${pageContext.request.contextPath}/css/bootstrap.css"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loading.css">
<script src="${pageContext.request.contextPath}/js/loading.js"></script>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loading.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background-position: center;
	overflow: hidden;
	height: 100%;
	background-image:url('/images/login.jpg')	;

}

h1 {
	color: #fff;
	text-align: center;
	font-weight: 100;
	margin-top: 40px;
}

#media {
	width: 300px;
	height: 400px;
	margin: 10px auto 0;
	overflow: hidden;
	opacity: 0.7px;
	margin-top: 100px;
}

#canvas {
	z-index: -1;
	position: absolute;
	display: none;
}

.button-class {
	text-align: center;
	margin: 0 auto;
	margin-top:35px;
}
</style>
</head>

<body>
	<form action="${pageContext.request.contextPath}/facelogin.action"
		method="get">
		<div class="admin_login">
			<div id="media">
				<video id="video" width="530" height="300" autoplay></video>
				<canvas id="canvas" width="400" height="300"></canvas>
			</div>
			<div style="align:center;text-align: center;" >
			<input type="text" name="username" class="form-control" placeholder="请输入用户名"
				placeholder="Text input" style="width: 300px;margin: 0 auto;margin-top:-50px"></div>
			<div class="button-class">
				<button type="button" id="myButton" class="btn btn-primary"
					 onclick="query()"
					style="width: 150px">立即注册</button>
			</div>
		</div>
		<div class="alert" style="display: none">
			<h2>消息</h2>
			<div class="alert_con">
				<p id="ts"></p>
				<p style="line-height: 70px">
					<a class="btn">确定</a>
				</p>
			</div>
		</div>
		<script type="text/javascript">
  		//var 是定义变量
  		var video = document.getElementById("video"); //获取video标签
  		var context = canvas.getContext("2d");
  		var con  ={
  			audio:false,
  			video:{
  			width:1980,
  			height:1024,
  			}
  		};	
  			//导航 获取用户媒体对象
  			navigator.mediaDevices.getUserMedia(con)
  			.then(function(stream){
  				video.src = window.URL.createObjectURL(stream);
  				video.onloadmetadate = function(e){
  					video.play();
  				}
  			});
  			function query(){
  				var u = $("input[name=username]");
  				if (u.val() == '') {
  					//$("#ts").html("用户名不能为空~");
  					alert("用户名不能为空");
  					is_show();
  					return false;
  				} else {
  					var reg = /^[0-9A-Za-z]+$/;
  					if (!reg.exec(u.val())) {
  						//$("#ts").html("用户名错误");
  						alert("用户名错误");
  						is_show();
  						return false;
  					}
  				}
  				
  				
  				
  				//把流媒体数据画到convas画布上去
  				context.drawImage(video,0,0,400,300);
  				$(".admin_login").hide();
  				loading7();
  				//人脸注册页面
  				var base = getBase64();
  				var json={userName:u.val(),base:base};
  				var jsons=JSON.stringify(json);
  				$.ajax({
  					type:"post",
  					url:"<%=basePath%>/login/faceLoginRegister.action",
  					data:{json:jsons},
  					success:function(data){
  						alert(data);
  						if("000000"==data){
  							removeLoading('face');
  							alert("人脸注册成功");
  							window.location.href="<%=basePath%>/save";
							return;
						}else if("ME4446"==data){
							removeLoading('face');
  							alert("该人脸存在人脸库中,请直接登陆");
  							window.location.href="<%=basePath%>/save";
  							return ;
						}else {
							removeLoading('face');
							alert("人脸注册失败");
							return;
						}
					}
				});
			}
  			function is_show() {
  				$(".alert").show().animate({
  					"top" : "45%"
  				}, 300)
  			}
  			
  			
			function getBase64() {
				var imgSrc = document.getElementById("canvas").toDataURL(
						"image/png");
				return imgSrc.split("base64,")[1];

			};
			function loading7() {
				$('body').loading({
					loadingWidth : 240,
					title : '请稍等!',
					name : 'face',
					discription : '这是一个描述...',
					direction : 'row',
					type : 'origin',
					originBg : '#71EA71',
					originDivWidth : 30,
					originDivHeight : 30,
					originWidth : 4,
					originHeight : 4,
					smallLoading : false,
					titleColor : '#388E7A',
					loadingBg : '#312923',
					loadingMaskBg : 'rgba(22,22,22,0.2)'
				});

			}
		</script>

	</form>
</body>
</html>

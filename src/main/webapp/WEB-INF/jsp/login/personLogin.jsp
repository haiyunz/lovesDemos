<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

<meta charset="utf-8">
<title>Fullscreen Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/supersized.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style2.css">
<script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath}/js/supersized-init.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
</head>

<body oncontextmenu="return false">
	<div class="top-buttons-agileinfo">
		<a></a>
	</div>
	<div class="page-container">
		<h1>登 陆</h1>
		<form
			action="${pageContext.request.contextPath}/login/loginSuccess.action"
			method="post">
			<div>
				<input type="text" name="username" class="username"
					placeholder="Username" autocomplete="off" />
			</div>
			<div>
				<input type="password" name="password" class="password"
					placeholder="Password" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<button id="submit" type="submit">Sign in</button>
			<button class="buttonclass" id="submitFaceRegister" type="button">人脸注册</button>
			<button class="buttonclass" id="submitFaceLogin" type="button">人脸登陆</button>
			<button class="buttonclass" id="submitIdRegister" type="button">账号注册</button>
		</form>
		<div class="connect">
			<p>If we can only encounter each other rather than stay with each
				other,then I wish we had never encountered.</p>
			<p style="margin-top: 20px;">如果只是遇见，不能停留，不如不遇见。</p>
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

	<script>
		$(".btn").click(function() {
			is_hide();
		});
		$("#submitFaceRegister").click(function() {
			window.location.href = ${pageContext.request.contextPath }"/login/loginRegister.action"
		});
		$("#submitIdRegister").click(function() {
			window.location.href = ${pageContext.request.contextPath}"/login/idRegister.action"
		});
		$("#submitFaceLogin").click(function() {
			window.location.href = ${pageContext.request.contextPath}"/login/faceLogin.action"
		});

		var u = $("input[name=username]");
		var p = $("input[name=password]");
		$("#submit").live('click', function() {
			if (u.val() == '' || p.val() == '') {
				$("#ts").html("用户名或密码不能为空~");
				is_show();
				return false;
			} else {
				var reg = /^[0-9A-Za-z]+$/;
				if (!reg.exec(u.val())) {
					$("#ts").html("用户名错误");
					is_show();
					return false;
				}
			}
		});
		window.onload = function() {
			$(".connect p").eq(0).animate({
				"left" : "0%"
			}, 600);
			$(".connect p").eq(1).animate({
				"left" : "0%"
			}, 400);
		}
		function is_hide() {
			$(".alert").animate({
				"top" : "-40%"
			}, 300)
		}
		function is_show() {
			$(".alert").show().animate({
				"top" : "45%"
			}, 300)
		}
	</script>
</body>

</html>


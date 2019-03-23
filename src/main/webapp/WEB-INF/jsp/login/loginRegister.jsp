<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<meta name="keywords"
	content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/css/snow.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jsUtil/jsUtil.js"
	type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.min.js"></script>
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<style>
</style>
<body style="">
	<div class="snow-container">
		<div class="snow foreground"></div>
		<div class="snow foreground layered"></div>
		<div class="snow middleground"></div>
		<div class="snow middleground layered"></div>
		<div class="snow background"></div>
		<div class="snow background layered"></div>
	</div>
	<div class="top-buttons-agileinfo"></div>
	<div class="main-agileits">
		<div class="form-w3-agile">
			<h2 class="sub-agileits-w3layouts">注 册</h2>
			<form
				action="${pageContext.request.contextPath}/login/loginRegisterController.action"
				method="post">
				<input type="text" name="userName" id="userName"
					placeholder="请输入用户名" required="true" /> <input type="password"
					name="password" id="password" placeholder="请输入密码" required="true" />
				<div class="submit-w3l">
					<input type="button" value="Sign in" onclick="register()">
				</div>
				<p class="p-bottom-w3ls">
					<a href="signup.html">Sign Up here</a>if u do not have an account
					yet.
				</p>
			</form>
		</div>
	</div>
	<div class="copyright w3-agile">
		<p>
			© 2019 管理系统 | Design by <a href="http://www.baidu.com/"
				target="_blank">haiyun.zhang.cn</a>
		</p>
	</div>

	<script>
		function register() {
			var uPatternUserName = /^[a-zA-Z0-9_-]{4,16}$/;
			var pPatternUserPassword = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
			var userName = yun("userName");
			var userpassword = yun("password");
			if(!uPatternUserName.test(userName)){
				alert("用户名输入格式不正确,请重新输入!");
				return ;
			}
			if(pPatternUserPassword.test(userpassword)){
				alert("密码输入错误,请重新输入!");
				return ;
			}
			//ajax请求注册用户名
			var json={userName:userName,password:userpassword};
			var jsons=JSON.stringify(json);
			$.ajax({
  					type:"post",
  					url:"<%=basePath%>/login/addloginRegister.action",
  					data:{json:jsons},
  					datatype:"json",
  					success:function(data){
  						if(data=="000000"){
  							alert("注册成功!");
  							return ;
  						}else{
  							alert("注册失败!");
  							return ;
  						}
  					}
			});
			
		}
	</script>

</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>人脸检测信息</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>

</head>

<body>
	<div>
	<h1>人脸</h1>
	<table style="text-algin:center">
			<tr>
			<td>性别 :<input value ="${gender}"></input></td>
			</tr>
			<tr><td>表情 :<input value ="${expression}"></input></td></tr>
			<tr><td>人脸置信度 :<input value ="${faceProbability}"></input></td></tr>
			<tr><td>臉型 :<input value ="${faceShape}"></input></td></tr>
			<tr><td>年龄 :<input value ="${age}"></input></td></tr>
			<tr><td>打分 :<input value ="${beauty}"></input></td></tr>
			<tr><td>人种 :<input value ="${race}"></input></td></tr>
			<tr><td>左眼睁开状态 :<input value ="${leftEye}"></input></td></tr>
			<tr><td>右眼睁开状态 :<input value ="${rigthEye}"></input></td></tr>
			<tr><td>情绪 :<input value ="${emotion}"></input></td></tr>
			<tr><td>人类 :<input value ="${faceType}"></input></td></tr>
			<tr><td>脸型的个数 :<input value ="${faceNum}"></input></td></tr>
	</table>
	</div>
	
</body>
</html>

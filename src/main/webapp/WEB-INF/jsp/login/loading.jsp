<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>loading测试效果</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loading.css">
	<script src="${pageContext.request.contextPath}/js/loading.js"></script>
</head>
<style>
	body,html{
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.div-btn{
		width: 100%;
		max-width: 560px;
		/*margin:200px auto; */
	}

	.div-btn div{
		margin: 10px 0 ;
	}

	.test-div{
		width: 300px;
		height: 300px;
		margin:20px auto;
		border: 1px solid #aaa;
		position: relative;
	}
</style>

<body>
	<div class="div-btn">
		<div class="dw-btn btn-success" onclick="loading1()">默认效果</div>
		<div class="dw-btn btn-warning" onclick="loading8()">纵向文字颜色</div>
		<div class="dw-btn btn-primary" onclick="loading2()">纵向效果无title</div>
		<div class="dw-btn btn-danger" onclick="loading3()">纵向效果无title描述</div>
		<div class="dw-btn btn-warning " onclick="loading4()">其他背景色</div>
		<div class="dw-btn btn-success" onclick="loading5()">纵向图片效果</div>
		<div class="dw-btn btn-primary" onclick="loading6()">横向图片效果</div>
		<div class="dw-btn btn-danger" onclick="loading7()">横向进度效果,字体颜色</div>
		<div class="dw-btn btn-warning" onclick="loading10()">无过渡效果</div>
	</div>
</body>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/loading.js"></script>
<script>
	function loading1() {
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			discription:'描述描述描述描述',
			direction:'column',
			type:'origin',
			// originBg:'#71EA71',
			originDivWidth:40,
			originDivHeight:40,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingMaskBg:'rgba(0,0,0,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading2() {
		$('body').loading({
			loadingWidth:240,
			title:'',
			name:'test',
			discription:'描述描述描述描述',
			direction:'column',
			type:'origin',
			// originBg:'#71EA71',
			originDivWidth:40,
			originDivHeight:40,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingMaskBg:'rgba(0,0,0,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading3() {
		$('body').loading({
			loadingWidth:120,
			title:'',
			name:'test',
			discription:'',
			direction:'column',
			type:'origin',
			// originBg:'#71EA71',
			originDivWidth:40,
			originDivHeight:40,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingMaskBg:'rgba(0,0,0,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading4() {
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			discription:'这是一个描述...',
			direction:'column',
			type:'origin',
			originBg:'#71EA71',
			originDivWidth:40,
			originDivHeight:40,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingBg:'#389A81',
			loadingMaskBg:'rgba(123,122,222,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading5() {
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			discription:'这是一个描述...',
			direction:'column',
			type:'pic',
			originBg:'#71EA71',
			originDivWidth:60,
			originDivHeight:60,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingBg:'#389A81',
			loadingMaskBg:'rgba(123,122,222,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading6() {
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			discription:'这是一个描述...',
			direction:'row',
			type:'pic',
			originBg:'#71EA71',
			originDivWidth:60,
			originDivHeight:60,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingBg:'rgba(20,125,148,0.8)',
			loadingMaskBg:'rgba(123,122,222,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading7() {
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			discription:'这是一个描述...',
			direction:'row',
			type:'origin',
			originBg:'#71EA71',
			originDivWidth:30,
			originDivHeight:30,
			originWidth:4,
			originHeight:4,
			smallLoading:false,
			titleColor:'#388E7A',
			loadingBg:'#312923',
			loadingMaskBg:'rgba(22,22,22,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading8(){
		$('body').loading({
			loadingWidth:220,
			title:'提示',
			name:'test',
			titleColor:'#fff',
			discColor:'#EDEEE9',
			discription:'颜色搭配,我不太懂',
			direction:'column',
			type:'origin',
			originBg:'#ECCFBB',
			originDivWidth:40,
			originDivHeight:40,
			originWidth:6,
			originHeight:6,
			smallLoading:false,
			loadingBg:'rgba(56,43,14,0.8)',
			loadingMaskBg:'rgba(66,66,66,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}

	function loading10(){
		$('body').loading({
			loadingWidth:240,
			title:'请稍等!',
			name:'test',
			animateIn:'none',
			discription:'这是一个描述...',
			direction:'row',
			type:'origin',
			mustRelative:true,
			originBg:'#71EA71',
			originDivWidth:30,
			originDivHeight:30,
			originWidth:4,
			originHeight:4,
			smallLoading:false,
			titleColor:'#388E7A',
			loadingBg:'#312923',
			loadingMaskBg:'rgba(22,22,22,0.2)'
		});

		setTimeout(function(){
			removeLoading('test');
		},3000);
	}
</script>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<meta name="keywords"
	content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "";
%>
<script src="/js/jquery.js"></script>
<script src="/js/video.min.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/BeAlert.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="/js/BeAlert.js"></script>
<style>
</style>
<body style="align: center; margin-top: 100px">
	<div class="jq22"></div>

	
	<table style="text-align: center; margin: 0 auto">
		<tr>
			<td>
				<div class="row">
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail"> <img
							style="width: 150px; height: 100px" src="${sessionScope.src }">
						</a>
					</div>
				</div>
			</td>
		</tr>

		<tr>
			<td>
				<div class="demo" style="display: none" id="word1">

					年龄：<span>${sessionScope.age }</span> <br /> 打分：<span>${sessionScope.beauty }</span>
					<span> (范围0-100，越大表示越美。)</span><br /> 情绪：<span>${sessionScope.emotion }</span>
					<br /> 表情：<span>${sessionScope.expression }</span> <br /> 人脸数量：<span>${sessionScope.faceNum }</span>
					<br /> 人脸置信度：<span>${sessionScope.faceProbability }</span> <br />
					脸型：<span>${sessionScope.faceShape }</span> <br /> 人种类：<span>${sessionScope.faceType }</span>
					<br /> 性别：<span>${sessionScope.gender }</span> <br /> 左眼睁开状态：<span>${sessionScope.leftEye }</span>
					<br /> 右眼睁开状态：<span>${sessionScope.rigthEye }</span> <br /> 世界人种：<span>${sessionScope.race }</span>
					<br />

				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="demo" style="display: none" id="word">
					年龄：${sessionScope.age }           得分：${sessionScope.beauty }
					情绪：${sessionScope.emotion }       表情：${sessionScope.expression }
					人脸数量：${sessionScope.faceNum }    人脸置信度：${sessionScope.faceProbability }
					脸型：${sessionScope.faceShape }     人种类：${sessionScope.faceType }
					性别：${sessionScope.gender }        左眼睁开状态：${sessionScope.leftEye }
					右眼睁开状态：${sessionScope.rigthEye } 世界人种：${sessionScope.race }</div>

			</td>
		</tr>
		<tr >

			<td>
				<div id="write"  style="text-align: center; margin: 0 auto ;float :left" ></div>
			</td>
		</tr>

	</table>
	<!-- <div id ="yanhuanStyle" style="margin-top:-350px;margin-left:-180;">
		<canvas id="mycanvas" style="width:600;height:900;" ></canvas>
	</div> -->
<h2><a href="javascript:;" id="confirm" style="display : none ">Confirm</a></h2>
<h2><a href="javascript:;" id="confirm1" style="display : none ">Confirm</a></h2>








	<script>
    //window.requestAnimationFrame()这个API是浏览器提供的js全局方法，针对动画效果。
    //$("#yanhuanStyle").hide();
    var isCount =${sessionScope.loginCount};
    var word="";
    var index = 0;
    //videoPlay();
    var beauty =${sessionScope.beauty};
   	writeWord("word","write");
    
    function videoPlay () {
    	$.ajax({
				type:"post",
				url:"<%=basePath%>/login/vedioPlay.action",
				data : {
					"beauty" : beauty
				},
				success : function(data) {

				}
			});
		}

		function writeWord(id, id1) {
			word = document.getElementById(id).innerHTML;
			function type() {
				document.getElementById(id1).innerText = word.substring(0,
						index++);
				document.getElementById(id1).style.align="center";
				if(word.length==index){
					clickMe("confirm");
				}
			}
			setInterval(type, 200);
			
			
		}

		function clickMe(id) {
			setTimeout(function() {
			// IE
			if (document.all) {
				document.getElementById(id).click();
			}
			// 其它浏览器
			else {
				var e = document.createEvent("MouseEvents");
				e.initEvent("click", true, true);
				document.getElementById(id).dispatchEvent(e);
			}
			 }, 2000);
		}

		 $(function () {
		        $("#confirm").click(function () {
		            confirm("Are you sure?", "恭喜您完成了测试!,继续浏览下去吗？!", function (isConfirm) {
		                if (isConfirm) {
		                	window.location.href="<%=basePath%>/login/widding";	
		                	return ;
		                } else {
		                	confirm("Are you sure ?" , "确定要离开吗？" , function (is){
		                		if(is){
		                			window.location.href="<%=basePath%>/login/widding";
		                			return ;
		                		}else{
		                			window.location.href="<%=basePath%>/save";
		                			return ;
		                		}
		                		
		                	},{confirmButtonText: '算了，去看看吧！', cancelButtonText: '是的，我要离开！', width: 400});
		                	
		                	
		                	return ;
		                }
		            }, {confirmButtonText: 'Yes,go on!', cancelButtonText: 'No, Thanks!', width: 400});
		        });
		    });
		       
		
		
		/*  window.requestAnimationFrame=(function(){
		 	debugger;
		     return window.requestAnimationFrame||
		                     window.webkitRequestAnimationFrame||
		                     window.mozRequestAnimationFrame||
		                     function (callback){
		                         window.setTimeout(callback,1000)
		                         //每间隔10秒执行一次动画
		                     }
		 })();
		 //获取canvas区域.并设置宽和高
		 var c=document.getElementById("mycanvas");
		 //c.width=document.documentElement.clientWidth;
		 //c.height=document.documentElement.clientHeight;
		 //转换成2d模型
		 var ctx=c.getContext("2d");
		 //烟花数组
		 hue=120;//设置颜色范围
		 timerTick = 0;//计时器
		 timerTotal=20;//每间隔20秒烟花绽放一次
		 fireworks=[];//存放烟花数组
		 particles=[];//存放碎屑数组
		 //随机min和max之间的值
		 function random(min,max){
		     return Math.random()*(max-min)+min;
		 }
		 //计算两点之间的距离
		 function distans(sx,sy,tx,ty){
		     var xdistan=sx-tx;
		     var ydistan=sy-ty;
		     return Math.sqrt((Math.pow(xdistan,2)+Math.pow(ydistan,2)));
		 }
		 //定义烟花对象
		 function Firework(sx,sy,tx,ty){
		     this.x=sx;
		     this.y=sy;
		     this.sx=sx;
		     this.sy=sy;
		     this.tx=tx;
		     this.ty=ty;
		     //计算两点之间的距离
		     this.targetDistances=distans(sx,sy,tx,ty);
		     //运行距离
		     this.distancesc=0;
		     //定义变量生成的运动轨迹
		     this.guiji=[];
		     this.guijicount=3;
		     while(this.guijicount--){
		         this.guiji.push([this.x,this.y]);
		     }
		     //计算角度
		     this.angle=Math.atan2(ty-sy,tx-sx);
		     this.speed=2;
		     this.jiasudu=1.05;
		     this.brightness=random(50,70);//烟花的明度
		     this.targetRad=5;//烟花小圈的半径
		 }
		 //更新烟花的位置
		 Firework.prototype.update=function(index){
		     this.guiji.pop();
		     this.guiji.push([this.x,this.y]);
		     //目标圆运动
		     if(this.targetRad<8){
		         this.targetRad+=0.3;
		     }else{
		         this.targetRad=1;
		     }
		     //根据加速度计算速度并且计算出烟花运行过程中x轴和y轴的速度
		     this.speed*=this.jiasudu;
		     var vx=Math.cos(this.angle)*this.speed;
		     var vy=Math.sin(this.angle)*this.speed;
		     //重新计算两点之间的距离
		     this.distancesc=distans(this.sx,this.sy,this.x+vx,this.y+vy);
		     //如果烟花运行距离大于或等于初始位置到目标位置之间的距离，生成新烟花并移除当前烟花，否则更新烟花位置
		     if(this.distancesc>=this.targetDistances){
		         //生成烟花碎屑
		         createparticals(this.tx,this.ty);
		         //销毁烟花小圈
		         fireworks.splice(index,1)
		     }else{
		         this.x+=vx;
		         this.y+=vy;
		     }
		 }

		 //开始画运行轨迹
		 Firework.prototype.draw=function(){
		     ctx.beginPath();
		     //轨迹的起点
		     ctx.moveTo(this.guiji[this.guiji.length-1][0],this.guiji[this.guiji.length-1][1]);
		     //绘制线条到目标点
		     ctx.lineTo(this.x,this.y);
		     //画出不同颜色的烟花
		     ctx.strokeStyle='hsl('+hue+',100%,'+this.brightness+'%)';
		     ctx.stroke();//绘制烟花轨迹
		     //画出目标小圆
		     ctx.beginPath();
		     ctx.arc(this.tx,this.ty,this.targetRad,0,Math.PI*2);
		     ctx.stroke();
		 }
		 //定义烟花碎屑方法
		 function Particle(x, y) {
		     this.x = x;
		     this.y = y;
		     this.guiji = [];
		     this.guijicount = 10;
		     while(this.guijicount--){
		         this.guiji.push([this.x,this.y]);
		     }
		     //生成任意方向的碎屑
		     this.angle=random(0 , 2*Math.PI);
		     this.speed=random(1,10);//随机的速度
		     this.mocal=0.95;//摩擦力
		     this.gravity=0.98;//重力
		     this.hue=random(hue-20,hue+20);//碎屑颜色变化范围
		     this.brightness=random(50,80);
		     this.alpha=1;//定义碎屑初始不透明
		     this.decay=random(0.015,0.03);//碎屑消失的时间
		 }
		 //更新碎屑
		 Particle.prototype.update=function(index){
		     this.guiji.pop();
		     //unshift() 方法可向数组的开头添加一个或更多元素，并返回新的长度。
		     this.guiji.unshift([this.x,this.y]);
		     //下面是烟花碎屑的运动
		     this.speed*=this.mocal;
		     this.x+=Math.cos(this.angle)*this.speed;
		     this.y+=Math.sin(this.angle)*this.speed+this.gravity;
		     this.alpha-=this.decay;//不透明度一直随时间变为0；即烟花碎屑消失
		     if(this.alpha<=this.decay){
		         particles.splice(index,1)//销毁烟花碎屑
		     }
		 }
		 //画烟花碎屑轨迹
		 Particle.prototype.draw=function(){
		     ctx.beginPath();
		     ctx.moveTo(this.guiji[this.guiji.length-1][0],this.guiji[this.guiji.length-1][1]);
		     ctx.lineTo(this.x,this.y);
		     //画出不同颜色的烟花利用HSL
		     ctx.strokeStyle='hsl('+hue+',100%,'+this.brightness+'%)';
		     ctx.stroke();
		 }
		 //创建碎屑
		 function createparticals(x,y){
		     //设定碎屑数目
		     var particalcount=300;
		     while(particalcount--){
		         //随着碎屑数目的减少为0，又重新调用碎屑方法
		         particles.push(new Particle(x,y))
		     }
		 }
		 //获取屏幕的宽和高
		 var clientw=document.documentElement.clientWidth;
		 var clienth=document.documentElement.clientHeight;
		 function loop(){
		     //requestAnimationFrame() 方法来告诉浏览器需要执行的动画，
		     // 并让浏览器在下一次重绘之前调用指定的函数来更新动画。
		     requestAnimationFrame(loop);
		     hue+=0.5;
		     //在源图像外显示目标图像。只有源图像外的目标图像部分会被显示，源图像是透明的。
		     ctx.globalCompositeOperation = 'destination-out';
		     ctx.fillRect(0,0,clientw,clienth);
		     ctx.fillStyle='rgb(0,0,0,0.5)';
		     //显示源图像和目标图像。
		     ctx.globalCompositeOperation='lighter';
		     var i=fireworks.length;
		     while(i--){
		         fireworks[i].draw();
		         fireworks[i].update(i);
		     }
		     var i=particles.length;
		     while(i--){
		         particles[i].draw();
		         particles[i].update(i);
		     }
		     //此时，我们还没有创建任何的烟花。我们希望设置一个定时时间timerTotal，周期性的
		     // 产生一个烟花，我们也需要一个时间计数timerTick，在每次帧更新的时候加1，记下帧更新的次数。
		     if(timerTick>=timerTotal)
		     {
		         fireworks.push(new Firework(clientw/2,clienth,random(0,clientw),random(0,clienth)));
		         timerTick=0;
		     }
		     else{
		         timerTick++;
		     }
		 }
		 window.onload=loop(); */
	</script>




</body>
</html>
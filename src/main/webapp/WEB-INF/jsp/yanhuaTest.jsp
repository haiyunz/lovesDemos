<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<body">
	<canvas id="mycanvas"></canvas>
	<script>
    //window.requestAnimationFrame()这个API是浏览器提供的js全局方法，针对动画效果。
    window.requestAnimationFrame=(function(){
    	debugger;
        return window.requestAnimationFrame||
                        window.webkitRequestAnimationFrame||
                        window.mozRequestAnimationFrame||
                        function (callback){
                            window.setTimeout(callback,1000)
                            //每间隔10秒执行一次动画
                        }
    })();

    //定义一个烟花粒子
    //获取canvas区域.并设置宽和高
    var c=document.getElementById("mycanvas");
    c.width=document.documentElement.clientWidth;
    c.height=document.documentElement.clientHeight;
    //转换成2d模型
    var ctx=c.getContext("2d");

    //window.load(loop); //加载页面的时候,执行回调方法
    function loop(){
    	
    	
    }
    //我们需要定义一个烟花的数组,比如燃放多少组烟花;
    guiji = [];   
    suiXieArray = [] ;//定义烟花爆炸后的数组
    
    //产生烟花的过程,先要定义一个烟花,把烟花定义成一个对象
    function FireWork(xx,xy,yx,yy){
    	this.x=sx;
        this.y=sy;
        this.sx=sx;
        this.sy=sy;
        this.tx=tx;
        this.ty=ty;
        //计算两点之间的距离
        this.targetDistances=distinct(sx,sy,tx,ty);
        //运行距离
        this.distancesc=0;
        //定义变量生成的运动轨迹
        this.guiji=[];
        this.guijicount=3;
        while(this.guijicount--){
            this.guiji.push([this.x,this.y]);
        }
    }
    
    
    //需要画出烟花的飞行轨迹
   FireWork.prototype.draw(){
	   ctx.beginPath();
       //轨迹的起点
       ctx.moveTo(this.guiji[this.guiji.length-1][0],this.guiji[this.guiji.length-1][1]);
       //绘制线条到目标点
       ctx.lineTo(this.x,this.y);
       //画出不同颜色的烟花
       ctx.strokeStyle='hsl('+hue+',100%,'+this.brightness+'%)';//绘制颜色,渐变
       ctx.stroke();//绘制烟花轨迹
       //画出目标小圆
       ctx.beginPath();
       ctx.arc(this.tx,this.ty,this.targetRad,0,Math.PI*2);//绘制园或者曲线;Math.PI*2 PI圆周率
       ctx.stroke();  //stroke() 方法会实际地绘制出通过 moveTo() 和 lineTo() 方法定义的路径。默认颜色是黑色。
    }
    
    
    
    //计算两点之间的距离
    function distinct(xx,xy,yx,yy){
    	//勾股定理计算两点之间的距离
    	return  Math.sqrt(Math.pow((yx-xx),2)+Math.pow((yy-xy),2));    	
    	
    }
    
    //计算最大值和最小值之间的随机数
    function random(min,max){
        return Math.random()*(max-min)+min;
    }
    
    
    //定义燃放后烟花爆炸的效果,碎屑效果
    function  suiXie(x,y){
    	//定义碎屑的数量
    	guiji=[];
    	var suiXieCount =100;
    	while(suiXieCount--){
			 guiji.push([x,y]);   		
    	}
    }
    
    //那我们需要定义一个烟花碎屑的对象;
    function  newYanhuaSuiXie(x,y){
    	//定义一个烟花爆炸后烟花碎屑的方向
    	 //计算角度
        this.angle=Math.atan2(ty-sy,tx-sx);
        this.speed=2;
        this.jiasudu=1.05;
        this.brightness=random(50,70);//烟花的明度
        this.targetRad=5;//烟花小圈的半径
    	
        
    }
    
    
    
    
    
    
    
    
</script>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta name="viewport"
	content="width=device-width,
minimum-scale=1.0, maximum-scale=2.0" />
<head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="<%=request.getContextPath()%>/css/register.css" type="text/css" rel="stylesheet">
        <link href="../css/global.css" type="text/css" rel="stylesheet">
        <script type="text/javascript" src="js/register.js"></script>
	
  </head>
  
  <body>
 	 <div id="layout">
 	 <input value="${pageContext.request.contextPath}"></input>
            <span">注册即启用！<%=basePath%>  ${pageContext.request.contextPath}</span>
            
          <form  method="post" action="<%=basePath%>/test">
          
              
                
         <input id="btnSubmit"  type="submit" value="提 交"/>
         
          
          </form>
        
     </div>
 	   
  </body>
</html>

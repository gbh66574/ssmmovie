<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <meta charset="utf-8">
        <title>Fullscreen Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
		<!-- Javascript -->
       <!--  <script src="js/jquery-1.8.2.min.js"></script> -->
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>
        <!-- CSS -->
         <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
        <link rel="stylesheet" href="css/style1.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

</head>
<script type="text/javascript">
$(function(){
	$('#loginSubmint').click(function(){
	$('#loginForm').form('submit',{
	    url:"User/login",    
	    onSubmit: function(){    
	    	return $(this).form('validate');
	    },    
	    success:function(data){    
	    	
			     var result=eval('(' + data + ')');  
			     if(result.state==0){
			    	 alert("登录成功");
			    	 location.href="index.jsp";
			    	 
			     }else {
			    	 alert("登录失败");
			    	
			     }
		} 
	       
	});
	});
});
</script>

<body>
 <div class="page-container">
            <h1>欢迎用户登录</h1>
            <form id="loginForm"  method="post" >
                <input type="text" name="username" class="username" placeholder="Username">
                <input type="password" name="password" class="password" placeholder="Password">
              <a id="loginSubmint"  href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>  
            </form>
        </div>

        

</body>
</html>
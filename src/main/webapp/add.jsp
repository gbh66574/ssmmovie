<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
		<!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>
        <!-- CSS -->
         <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
		<link rel="stylesheet" href="css/style1.css">

</head>
<body>
 <div class="page-container">
				<ul>
							<h1>用户注册</h1>
					</ul>
				<form action="User/addUser" method="post">
					<input type="text" name="username" placeholder="Username"><br/>
					<input type="password" name="password" placeholder="Password"><br/>
					<input type="text" name="name" placeholder="Name"><br/>
					<select name="sex" style="width: 268px;height: 40px">
					<option value="">-----------------------请选择性别-----------------------</option>
					<option value="1">男</option>
					<option value="0">女</option>
					</select><br>
					<input type="text" name="dress" placeholder="Dress"><br/>
					<input type="text" name="phone" placeholder="Phone"><br/>
					<input type="text" name="qq" placeholder="QQ"><br/>
						<button type="submit" >提交</button><br/>
					</form>
				</div>	
</body>
</html>
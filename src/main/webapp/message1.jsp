<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<!-- <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<title>学生列表</title>
<script type="text/javascript">

	//将表单数据转为json
	function form2Json(id) {
	
	    var arr = $("#" + id).serializeArray();
	    var jsonStr = "";
	
	   	jsonStr += '{';
	    for (var i = 0; i < arr.length; i++) {
	        jsonStr += '"' + arr[i].name + '":"' + arr[i].value + '",'
	    }
	    jsonStr = jsonStr.substring(0, (jsonStr.length - 1));
	    jsonStr += '}'
	
	    var json = JSON.parse(jsonStr);
	    return json;
	}
	
	var url = "";
	$(function(){
		
		$("#dg").datagrid({
			idField:"id",
			url:"Message/queryByPage",
			queryParams: form2Json("searchform"),//查询参数
			columns:[[
				{field:"",checkbox:true},
				{field:"uname",title:"发表人",width:100,align:"center"},
				{field:"mname",title:"评价电影",width:100,align:"center"},
				{field:"content",title:"评论内容",width:100,align:"center"},
				{field:"reportTime",title:"发布时间",width:100,align:"center"},
			]],
			fitColumns:true,
			toolbar: [],
			pagination:true,
			pageSize:30
		});
		
		//点击搜索
		$("#search_btn").click(function() {
            $('#dg').datagrid({ 
            	queryParams: form2Json("searchform")
            });   
        });
	});


	
	
</script>
<style type="text/css">
	
	.right{
		text-align: right;
	}
</style>
</head>
<body>
<div class="header">
		<div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="contact.html">订票车</a></li>
						<li><a href="contact.html">我的订单</a></li>
						<li><a href="contact.html">我的信息</a></li>
						<li><a href="message1.jsp">留言板</a></li>
						<li><a href="add.jsp">注册</a></li>
						<li><a href="login2.jsp">用户登录</a></li>
					</ul>
				</div>
				<div class="account_desc">
						<ul>
						
						<li><a href="login.jsp">管理员登录</a></li>
						</ul>
					</div>
				<div>
			</div>
		 <form id="clogin" method="post" >
		<table>
			<tr>
				<td><a id="loginSubmint"  href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">注销</a></td>
			</tr>
		</table>
		</form>
				<div class="clear"></div>
			</div>

		</div>
		<div class="wrap">
			<div class="header_top">
				<div class="logo">
					<a href="index.html"><img src="img/logo.png" alt="" /></a>
				</div>
				<div class="header_top_right">

					<div class="search_box"></div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					function DropDown(el) {
						this.dd = el;
						this.initEvents();
					}
					DropDown.prototype = {
						initEvents : function() {
							var obj = this;

							obj.dd.on('click', function(event) {
								$(this).toggleClass('active');
								event.stopPropagation();
							});
						}
					}

					$(function() {

						var dd = new DropDown($('#dd'));

						$(document).click(function() {
							// all dropdowns
							$('.wrapper-dropdown-2').removeClass('active');
						});

					});
				</script>
				<div class="clear"></div>
			</div>
	<div style="height: 5%">
		<div style="width:66%;height: 5%;float:left">
		<form name="searchform" method="post" id ="searchform">
			发表人：<input type="text" name="quname" class="easyui-textbox">
		        <a id="search_btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
	  	</form>
	  	</div>
		
  	</div>
  	
  	<div style="height: 95%">
		<table id="dg" fit="true"></table>
	</div>
	<div id="dd" class="easyui-dialog" style="width: 400px;text-align: center;padding: 10px;" closed="true">
		
	</div>
	<div id="role" class="easyui-dialog" style="width: 400px;text-align: center;" closed="true">
		<table id="rolegrid"></table>
	</div>
</body>
</html>
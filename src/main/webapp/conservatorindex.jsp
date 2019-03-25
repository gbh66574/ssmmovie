<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$("#nav a")
				.click(
						function() {
							var title = $(this).text();
							var url = $(this).attr("url");
							//$.messager.alert("提示",$(this).text(),"info");
							if ($('#tt').tabs('exists', title)) {//选项页存在
								$('#tt').tabs('select', title);//选中
							} else {
								$('#tt')
										.tabs(
												'add',
												{
													title : title,
													content : "<iframe src='"
															+ url
															+ "' style='width: 100%;height: 100%' frameborder='0'></iframe>",
													closable : true
												});
							}
						});
	});
	$(function(){
		$('#loginSubmint').click(function(){
		$('#clogin').form('submit',{
		    url:"User/logout",    
		    onSubmit: function(){    
		    	return $(this).form('validate');
		    },    
		    success:function(data){    
		    	
				     var result=eval('(' + data + ')');  
				     if(result.state==0){
				    	 alert("注销成功");
				    	 location.href="index.jsp";
				    	 
				     }else {
				    	 alert("注销失败");
				    	
				     }
			} 
		       
		});
		});
	});
</script>

</head>
<body>
	<div class="logo">
		<a href="index.html"><img src="img/logo.png" alt="" /></a>
	</div>
 <div class="account_desc">
						<form id="clogin" method="post" >
		<table>
			<tr>
				<td><a id="loginSubmint"  href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">注销</a></td>
			</tr>
		</table>
		</form>
					</div>
	<div id="cc" class="easyui-layout" fit="true">
		<div data-options="region:'north',split:false,border:false"
			style="height: 100px;"></div>
		<div data-options="region:'south',border:false,split:false"
			style="height: 100px;"></div>
		<div
			data-options="region:'west',title:'导航菜单',iconCls:'icon-save',split:false"
			style="width: 150px;">
			<div id="nav" class="easyui-accordion" fit="true">
				<div title="系统管理" data-options="iconCls:'icon-save'"
					style="overflow: auto; padding: 10px;">
					<ul class="easyui-tree" fit="true">
						<li><a href="#" url="user.jsp">用户管理</a></li>
						<li><a href="#" url="movietype.jsp">电影类别管理</a></li>
						<li><a href="#" url="movie.jsp">电影管理</a></li>
						<li><a href="#" url="order.jsp">订单管理</a></li>
						<li><a href="#" url="message.jsp">留言管理</a></li>
						<li><a href="index.jsp" >返回首页</a></li>


					</ul>
				</div>
				
			</div>
		</div>
		<div data-options="region:'center'">
			<div id="tt" class="easyui-tabs" fit="true" border="false">
				<div title="欢迎页" style="text-align: center; font-size: 20px;">
					<h1>欢迎管理员登录，欢迎进入Mstore电影后台管理界面！</h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
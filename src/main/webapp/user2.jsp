<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			url:"User/queryById?id",
			queryParams: form2Json("searchform"),//查询参数
			columns:[[
				{field:"",checkbox:true},
				{field:"id",title:"编号",width:100,align:"center"},
				{field:"username",title:"账号",width:100,align:"center"},
				{field:"password",title:"密码",width:100,align:"center"},
				{field:"name",title:"姓名",width:100,align:"center"},
				{field:"sex",title:"性别",width:100,align:"center",formatter: function(value,row,index){
					if (value==1){
						return "男";
					} else {
						return "女";
					}
				}
				},
				{field:"dress",title:"联系地址",width:100,align:"center"},
				{field:"phone",title:"联系方式",width:100,align:"center"},
				{field:"qq",title:"QQ",width:100,align:"center"},
				{field:"createTime",title:"创建时间",width:100,align:"center"}
				
			]],
			fitColumns:true,
			toolbar: [{
				text:"删除用户",
				iconCls: 'icon-remove',
				handler: function(){
					remove();
				}
				}],
				pagination:true,
				pageSize:30,
			});
		//点击搜索
		$("#search_btn").click(function() {
            $('#dg').datagrid({ 
            	queryParams: form2Json("searchform")
            });   
        });
	});
	
	
	//删除记录
	function remove(){
		var array = $("#dg").datagrid("getSelections");
		if(array.length==0){
			$.messager.alert("提示","请选择要删除的记录","info");
			return;
		}
		$.messager.confirm("提示","你确定要删除这"+array.length+"条记录吗？",function(r){
			if(r){
				var ids = "";
				for(var i=0;i<array.length;i++){
					ids += array[i].id+",";
				}
				ids = ids.substring(0,ids.length-1);
				$.ajax({
					url:"User/deleteMore",
					type:"post",
					data:"ids="+ids,
					dataType:"json",
					success:function(result){
						if(result.state==0){
							//刷新页面
							$("#dg").datagrid("reload");
							$.messager.alert("提示",result.msg,"info");
						}else{
							$.messager.alert("提示",result.msg,"error");
						}
						//清除之前选择的所有行
						$("#dg").datagrid("clearSelections");
					}
				});
			}
		});
	}
</script>
<style type="text/css">
	
	.right{
		text-align: right;
	}
</style>
</head>
<body>
	<div style="height: 5%">
		<div style="width:66%;height: 5%;float:left">
		<form name="searchform" method="post" id ="searchform">
			账号：<input type="text" name="qusername" class="easyui-textbox" >
			姓名：<input type="text" name="qname" class="easyui-textbox">
		        <a id="search_btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>
	  	</form>
	  	</div>
		
  	</div>
  	
  	<div style="height: 95%">
		<table id="dg" fit="true"></table>
	</div>
	<div id="dd" class="easyui-dialog" style="width: 400px;text-align: center;padding: 10px;" closed="true">
		<form id="ff" method="post">
			<table style="margin: 0 auto;">
				<!-- <tr>
					<td class="right">编号：</td>
					<td><input type="text" name="id" class="easyui-textbox" data-options="required:true"></td>
				</tr> -->
				<tr>
					<td class="right">账号：</td>
					<td><input type="text" name="username" class="easyui-textbox" data-options="required:true"></td>
				</tr>
				<tr>
					<td class="right">密码：</td>
					<td><input type="password" name="password" class="easyui-textbox" data-options="required:true"></td>
				</tr>
				<tr>
					<td class="right">姓名：</td>
					<td><input type="text" name="name" class="easyui-textbox" data-options="required:true"></td>
				</tr>
				<tr>
					<td class="right">性别：</td>
					<td>
						<input type="radio" name="sex" value="1" checked="checked">男
						<input type="radio" name="sex" value="0">女
					</td>
				</tr>
				<tr>
					<td class="right">联系地址：</td>
					<td><input type="text" name="address" class="easyui-textbox" data-options="required:true"></td>
				</tr>
				<tr>
					<td class="right">联系方式：</td>
					<td><input type="text" name="phone" class="easyui-textbox" data-options="required:true"></td>
				</tr>
				<tr>
					<td class="right">QQ：</td>
					<td><input type="text" name="qq" class="easyui-textbox" data-options="required:true"></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="role" class="easyui-dialog" style="width: 400px;text-align: center;" closed="true">
		<table id="rolegrid"></table>
	</div>
</body>
</html>
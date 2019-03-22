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
			url:"Message/queryByPage",
			queryParams: form2Json("searchform"),//查询参数
			columns:[[
				{field:"",checkbox:true},
				{field:"id",title:"编号",width:100,align:"center"},
				{field:"uname",title:"发表人",width:100,align:"center"},
				{field:"mname",title:"评价电影",width:100,align:"center"},
				{field:"content",title:"评论内容",width:100,align:"center"},
				{field:"reportTime",title:"发布时间",width:100,align:"center"},
			]],
			fitColumns:true,
			toolbar: [{
				text:"删除",
				iconCls: 'icon-remove',
				handler: function(){
					remove();
				}
			}],
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
					url:"Message/deleteMore",
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

	//保存或者更新数据
	function save(){
		$("#ff").form("submit",{
			url:url,
			onSubmit:function(){
				//调用validate方法校验表单中所有的字段有效性，只有所有的字段有效才返回true
				return $(this).form("validate");
			},
			success:function(result){
				//接收服务器返回的json格式字符串数据转换成json对象
			 	var data = eval('(' + result + ')');   
		        if (data.state==0){    
		           	$.messager.alert("提示消息",data.msg,"info"); 
		           	//刷新列表
		           	$("#dg").datagrid("reload");
		        } else{
		        	$.messager.alert("提示消息",data.msg,"error");
		        }
		        //关闭弹出框
		        $("#dd").dialog("close");
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
			公众号账号：<input type="text" name="qpublic_id" class="easyui-textbox" >
			姓名：<input type="text" name="qname" class="easyui-textbox">
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
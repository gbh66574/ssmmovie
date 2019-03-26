<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE HTML>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<!-- <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
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
	<div class="header">
		<div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="contact.html">订票车</a></li>
						<li><a href="contact.html">我的订单</a></li>
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
			
	<!------------End Header ------------>
	<div class="main">
		<div class="wrap">
			<div class="content">
			<div class="content_bottom">
					<div class="heading">
						<h3>所有</h3>
						
					</div>
					<div class="section group">
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/42e660e4dbfa85cf67343b2aba10b71c3577509.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">篮球冠军</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥40</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p0.meituan.net/movie/4d47b045a3f62bbccf94cb48ad5cbc64303329.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">乐高大电影2</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥42</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/b8a625614c1d401d9cd170b092230ae01516197.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">地久天长</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥35</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/d94e5c3054778f6f48bff3a813b0b7cd5300998.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">波西米亚狂想曲</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥55</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/404c1923a2366a26462b33b9a339e3a291425.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">夜伴歌声</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥35</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="content_top">
					<div class="heading">
						
					</div>
				
				<div class="section group">
				
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/9ef02a501fee7f62d49d2096b52175d32155331.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">驯龙高手3</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥38</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p1.meituan.net/movie/616cd50a33550a9225ac781e52d14ae54967551.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">流浪地球</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥50</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/fc4dd6cd0c6f7db566a128cc05c475355664427.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">战斗天使：阿卡丽</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥45</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/034069fc367db8a7d9644717b416cc2c332883.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">惊奇队长</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥50</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p1.meituan.net/movie/94b9bfc5ffeea6d6e362395992f547762041095.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">比悲伤更悲伤的故事</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥45</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					
				</div>
				
			</div>
			<div class="content_bottom">
					<div class="heading">
						<h3>所有</h3>
						
					</div>
					<div class="section group">
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/42e660e4dbfa85cf67343b2aba10b71c3577509.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">篮球冠军</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥40</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p0.meituan.net/movie/4d47b045a3f62bbccf94cb48ad5cbc64303329.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">乐高大电影2</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥42</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/b8a625614c1d401d9cd170b092230ae01516197.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">地久天长</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥35</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>

						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/d94e5c3054778f6f48bff3a813b0b7cd5300998.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">波西米亚狂想曲</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥55</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.jsp"><img
								src="https://p1.meituan.net/movie/404c1923a2366a26462b33b9a339e3a291425.jpg@464w_644h_1e_1c"
								alt="" /></a>
							<h2>
								<a href="preview.jsp">夜伴歌声</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">￥35</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.jsp">加入订票车</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			<div class="content_top">
					<div class="heading">
						
					</div>
				
				<div class="section group">
				
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/9ef02a501fee7f62d49d2096b52175d32155331.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">驯龙高手3</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥38</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p1.meituan.net/movie/616cd50a33550a9225ac781e52d14ae54967551.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">流浪地球</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥50</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/fc4dd6cd0c6f7db566a128cc05c475355664427.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">战斗天使：阿卡丽</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥45</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p0.meituan.net/movie/034069fc367db8a7d9644717b416cc2c332883.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">惊奇队长</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥50</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.jsp"><img
							src="https://p1.meituan.net/movie/94b9bfc5ffeea6d6e362395992f547762041095.jpg@464w_644h_1e_1c"
							alt="" /></a>
						<h2>
							<a href="preview.jsp">比悲伤更悲伤的故事</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">￥45</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.jsp">加入订票车</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					
				</div>
				
			</div>
		</div></div></div></div></div>

		<div class="footer">
   	  <div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>信息</h4>
						<ul>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">客服</a></li>
						<li><a href="#">搜索</a></li>
						<li><a href="#">订单</a></li>
						<li><a href="#">联系我们</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>为何从我们这购买</h4>
						<ul>
						<li><a href="#">关于我们</a></li>
						<li><a href="#">客服服务</a></li>
						<li><a href="#">隐私政策</a></li>
						<li><a href="www.baidu.com">网站地图</a></li>
						<li><a href="#">搜索字词</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>我的账户</h4>
						<ul>
							<li><a href="contact.html">登录</a></li>
							<li><a href="index.html">查看购物车</a></li>
							<li><a href="#">我的收藏</a></li>
							<li><a href="#">我的订单</a></li>
							<li><a href="contact.html">帮助</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>我的账户</h4>
						<ul>
							<li><a href="contact.html">登录</a></li>
							<li><a href="index.html">查看购物车</a></li>
							<li><a href="#">我的收藏</a></li>
							<li><a href="#">我的订单</a></li>
							<li><a href="contact.html">帮助</a></li>
						</ul>
				</div>
				
			</div>
        </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">

<!-- <script type="text/javascript">
$(function(){
	$('#loginSubmint').click(function(){
	$('#loginForm').form('submit',{
	    url:"ShoppingCart/add",    
	    onSubmit: function(){    
	    	return $(this).form('validate');
	    },    
	    success:function(data){    
	    	
			     var result=eval('(' + data + ')');  
			     if(result.state==0){
			    	 alert("结算成功");
			    	 location.href="shopcat.jsp";
			    	 
			     }else {
			    	 alert("结算失败");
			    	
			     }
		} 
	       
	});
	});
});
</script> -->
</head>
<body>
<div class="wrapper">
  <div class="container">
    <div id="seat-map">
      <div class="front-indicator">电影屏幕</div>
    </div>
    <div class="booking-details">
      <h3>已选中的座位(<span id="counter">0</span>):</h3>
      <ul id="selected-seats">
      </ul>
      <p>总价: <b>$<span id="total">0</span></b></p>
      <p><form id="loginForm"  method="post" >
      <a id="loginSubmint"  href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">加入购物车</a> 
      </form>
       </p>      
      <div id="legend"></div>
    </div>
  </div>
</div>
<script src="js/jquery-1.11.0.min.js"></script> 
<script src="js/jquery.seat-charts.min.js"></script> 
<script>
			var firstSeatLabel = 1;
			$(document).ready(function() {
				var $cart = $('#selected-seats'),
					$counter = $('#counter'),
					$total = $('#total'),
					sc = $('#seat-map').seatCharts({
					map: [
						'fffff',
						'fffff',
						'fffff',
						'fffff',
						'_____',
						'eeeee',
						'eeeee',
						'eeeee',
						'eeeee',
						'eeeee',
					],
					seats: {
						f: {
							price   : 40,
							classes : 'first-class', //your custom CSS class
							category: '前排座位'
						},
						e: {
							price   : 40,
							classes : 'economy-class', //your custom CSS class
							category: '后排座位'
						}					
					},
					naming : {
						top : false,
						getLabel : function (character, row, column) {
							return firstSeatLabel++;
						},
					},
					legend : {
						node : $('#legend'),
					    items : [
							[ 'f', 'available',   '前排座位' ],
							[ 'e', 'available',   '后排座位'],
							[ 'f', 'unavailable', '已预售']
					    ]					
					},
					click: function () {
						if (this.status() == 'available') {
							$('<li>'+this.data().category+this.settings.label+'号座位'+'：<br/>价格：<b>$'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[删除]</a></li>')
								.attr('id','cart-item-'+this.settings.id)
								.data('seatId', this.settings.id)
								.appendTo($cart);
							$counter.text(sc.find('selected').length+1);
							$total.text(recalculateTotal(sc)+this.data().price);
							return 'selected';
						} else if (this.status() == 'selected') {
							//update the counter
							$counter.text(sc.find('selected').length-1);
							//and total
							$total.text(recalculateTotal(sc)-this.data().price);
							//remove the item from our cart
							$('#cart-item-'+this.settings.id).remove();
							//seat has been vacated
							return 'available';
						} else if (this.status() == 'unavailable') {
							//seat has been already booked
							return 'unavailable';
						} else {
							return this.style();
						}
					}
				});
				//this will handle "[cancel]" link clicks
				$('#selected-seats').on('click', '.cancel-cart-item', function () {
					//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
					sc.get($(this).parents('li:first').data('seatId')).click();
				});
				//let's pretend some seats have already been booked
				sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');
		});
		function recalculateTotal(sc) {
			var total = 0;
			//basically find every selected seat and sum its price
			sc.find('selected').each(function () {
				total += this.data().price;
			});
			return total;
		}
		</script>
<div align="center" style="clear:both;font-size:12px;color:#666;font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>

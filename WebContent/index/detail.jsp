<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

	<div class="main">
		<div class="content">
		
			<div class="content_top">
				<div class="heading">
					<h3>商品详情</h3>
				</div>
				<div class="clear"></div>
			</div>
			
			<div class="section group">
			
				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="../${product.cover}" alt="" />
					</div>
					<div class="desc span_3_of_2">
						<h2>${product.name}</h2>
						<p>${product.intro}</p>					
						<div class="price">
							<p>价格: <span>￥${product.price}</span></p>
							<p>库存: ${product.stock}</p>
						</div>
						<div class="add-cart">
							<div class="button"><span><a href="javascript:buy(${product.id});">加入购物车</a></span></div>
							<div class="clear"></div>
						</div>
					</div>
					 
					
				    </div> 				
				</div>
	
	
				
				
				<div class="clear"></div>
				
			</div>
		
			<div class="content_bottom"></div>
			
    	</div>
	</div>



</div>

</body>
</html>
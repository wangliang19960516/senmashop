<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="./css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<link href="./css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="./js/jquery.js"></script> 
<script type="text/javascript" src="./js/layer.js"></script> 
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="./js/nav.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript" src="./js/nav-hover.js"></script>
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
  });
</script>
</head>

<body>
	<div class="header">
		<div class="header_top" style="background:#228B22; color:#228B22;border-radius:25px 25px 25px 25px;">
				<div  align="center">
					<a href="index.action"><img src="./images/logo.png" alt="" /></a>
				</div>	  
			
	</div>
		
	<div class="header" style="background:#EEE; border-radius:25px 25px 0 0;">
		<div class="header_top">	
			
			  <div class="header_top_right">
			  
			    <div class="search_box">
				    <form action="search.action" method="post">
				    	<input type="text" name="search" value="${search}" placeholder="输入要搜索内容...">
						<input type="submit" value="搜索">
				    </form>
			    </div>	
			    	 
			    <div class="login"style="border-radius:12px 12px 12px 12px;border-color:#fff000">
					<span>
						<s:if test="#session.user==null">
							<a href="login.jsp"></a>
							<a href="login.jsp">用户登录</a>
						</s:if>
						<s:else>
							<a href="my.action">&nbsp;&nbsp;[${sessionScope.user.username}]</a>
							<a href="logout.action"  style="float: right;">退 出</a>
						</s:else>
					</span>
				</div>	 
			    	    
			    <div class="shopping_cart" style="border-radius:12px 0px 0px 12px ;">
					<div class="cart" style="border-radius:0px 6px 6px 0px ;">
						<a href="cart.action"  rel="nofollow">
							<strong class="opencart"> </strong>
							<span class="cart_title">购物车</span>
							[ <span class="no_product" id="span_amount">${_amount==null ? 0 : _amount}</span> ]
						</a>
					</div>
			    </div>
			    
				
				
				<div class="clear"></div>
				
			</div>
			<div class="clear"></div>
		</div>
		
		


		
		
		<div class="menu">
			<ul id="dc_mega-menu-orange" class="dc_mm-orange" >
				<li <s:if test="flag==1">class="select_page"</s:if>><a href="index.action">商城首页</a></li>
				<li <s:if test="flag==2">class="select_page"</s:if>><a href="productList.action">商品分类</a>
					<ul>
						<s:iterator value="categoryList">
							<li><a href="productList.action?categoryid=<s:property value="id"/>"><s:property value="name"/></a></li>
						</s:iterator>
					</ul>
				</li>
				<li <s:if test="flag==3">class="select_page"</s:if>><a href="productShow.action">热销服饰</a></li>
				<li <s:if test="flag==4">class="select_page"</s:if>><a href="productSale.action">特价促销</a></li>
				<li <s:if test="flag==5">class="select_page"</s:if>><a href="productNew.action">新装上市</a></li>
				
				<s:if test="#session.user!=null">
					<li <s:if test="flag==6">class="select_page"</s:if>><a href="my.action">个人中心</a></li>
					<li <s:if test="flag==7">class="select_page"</s:if>><a href="order.action">我的订单</a></li>
				</s:if>
				
				<s:if test="#session.user==null">
					<li style="float: right;"><a href="../admin/login.jsp" target="_blank">后台登录</a></li>
				</s:if>
				<div class="clear"></div>
			</ul>
		</div>
		
		
	</div>

</body>
</html>
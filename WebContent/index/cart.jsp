<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>
				
					
				
<div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main" align="center">
    <div class="contentcart" >
    	<div class="login_panel"  style="width:600px" >	
        	<span style="color:red;"><s:actionmessage/></span>
        	
        	<s:if test="#session.shopcartList != null">
        	
				<h3>我的购物车</h3>
				
				<table class="cart_table" >
				
					<s:iterator value="#session.shopcartList">
						<tr class="cart_title" >
							<td>
								<a href="detail.action?productid=${product.id}">
									<img src="../${product.cover}" class="cart_thumb" border="0"/>
								</a>
							</td>
							<td style="display:table-cell; vertical-align:middle">${product.name}</td>
							<td style="display:table-cell; vertical-align:middle">￥${product.price}</td>
							<td style="display:table-cell; vertical-align:middle">
								<a href="javascript:add(${id});"> [ + ] </a>
								   · ${amount} ·   
								<a href="javascript:lessen(${id});">[ - ] </a>
								
							</td>
							<td style="display:table-cell; vertical-align:middle">￥${total}</td>
							<td style="display:table-cell; vertical-align:middle" >
								
								<a href="javascript:deletes(${id});"> 移除商品</a>
							</td>
						</tr>			
					</s:iterator>
					
	          		<tr>
			            <td colspan="4" class="cart_total"><span class="red">总价: </span></td>
			            <td><s:property value="#session._total"/></td>
	          		</tr>
	          		
	        	</table>
        					
	            <div class="buttons">
	            
	            	<div style="float:left; padding-top: 10px">
	            		
	            		<%-- <button class="grey"  href="javascript:cleanall(${id});">· 清空 ·</button> --%>
	            		
	            		
	            		<button class="grey"  onclick="location.href='cleanall.action'">清空</button>
	            	</div>
	            	
	            	<div style="float:right; padding-top: 10px">
	            		<button style= "background-color: #4CAF50; /* Green */
									    border: none;
									    color: white;
									    padding: 15px 32px;
									    text-align: center;
									    text-decoration: none;
									    display: inline-block;
									    font-size: 16px" 
									    onclick="location.href='save.action'">提交订单</button>
	            	</div>
	            </div>
	            
            </s:if>
            
            <div class="clear"></div>
		</div>
       <div class="clear"></div>
    </div>
 </div>



</div>
				
</body>
</html>
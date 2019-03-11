<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main">
    <div class="contentmyorder">
    	<div class="login_panel"  style="width:600px">	
        	<s:actionmessage/>
        	
        	<s:if test="indentList != null">
        		<br>
				<h3 style="text-align:center;">我的订单</h3>
				
				<br>
        		<s:iterator value="indentList">
					<table class="cart_table">
					
						<tr>
		          			<td>
			          			订单号: <s:property value="id"/>
			          			<s:if test="status==1">[未付款] 
			          			<a href="topay.action?indentid=${id}">
			          				<button style="background-color: #4CAF50; 
										    border: none;
										    color: white;
										    padding: 4px 6px;
										    text-align: center;
										    text-decoration: none;
										    display: inline-block;
										    font-size: 16px;
										    border-radius:5px 5px 5px 5px; ">立即付款</button>
								</a></s:if>
			          			<s:if test="status==2"> [ 已付款 ] </s:if>
			          			<s:if test="status==3"> [ 已发货 ] </s:if>
			          			<s:if test="status==4"> [ 已完成 ] </s:if>
		          			</td>
		          			<td colspan="2">下单时间: <s:date name="systime" format="yyyy-MM-dd HH:mm"/></td>
				            <td class="cart_total"><span class="red">总价: </span></td>
				            	<s:if test="status==1">  </s:if>
				            <td>￥<s:property value="total"/></td>
		          		</tr>
		          		
						<s:iterator value="itemList">
							<tr class="cart_title">
								<td>
									<a href="detail.action?productid=${product.id}">
										<img src="../${product.cover}" class="cart_thumb" border="0"/>
									</a>
								</td>
								<td style="display:table-cell; vertical-align:middle">${product.name}</td>
								<td style="display:table-cell; vertical-align:middle">￥${price}</td>
								<td style="display:table-cell; vertical-align:middle">x ${amount}</td>
								<td style="display:table-cell; vertical-align:middle">￥${total}</td>
							</tr>			
						</s:iterator>
						
		          		
		        	</table><br>
	        	
	        	</s:iterator>
        	
            </s:if>
            
            <div class="clear"></div>
		</div>
       <div class="clear"></div>
    </div>
 </div>



</div>

</body>
</html>
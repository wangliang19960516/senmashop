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

<div class="main">
    <div class="contentpay">
    	<div class="login_panel"  style="width:600px ">	
        	<span style="color:red;"><s:actionmessage/></span>
        	
        	<s:if test="indent != null">
	        	<br><br>
				<h3 style="text-align:center;">收货信息</h3>
					<table class="cart_table" >
					<br><br>
					<tr  >
	          			<td>订单号: ${indent.id}</td>
	          			<td><s:date name="indent.systime" format="yyyy-MM-dd HH:mm:ss"/></td>
			            <td><span class="red">总价: ￥${indent.total}</span></td>
	          		</tr>
					</table>
				
				<form action="prepay.action" method="post" id="payform">
				
					<input type="hidden" name="indentid" value="${indent.id}">
					<input type="hidden" name="paytype" id="paytype">
				
					<table class="cart_table">
						<tr>
		          			<td colspan="3">电话: <input type="text" name="user.phone" value="${user.phone}" id="fphone" style="width:80%;"></td>
		          		</tr>
						<tr>
		          			<td colspan="3">地址: <input type="text" name="user.address" value="${user.address}" id="faddress" style="width:80%;"></td>
		          		</tr>
		        	</table>
	        	</form>
	        	
	        	<div style = "margin:0 auto; width:400px; height:100px; text-align:center; font-size:28px;">
	        	<br>请选择您的支付方式<br>
	        	<br>
	        	</div>
				
				<table class="cart_table" >
					<tr style="margin-left: 40%;" >
						<td >
							<a style="padding-left:0px ;;padding-right: 1px;"
								href="javascript:dopay(2);"><img src="images/alipay.jpg" alt="支付宝支付"></a>
						</td>
						<td>
							<a style="padding-left:1px ;padding-right: 0px;"
								href="javascript:dopay(1);"><img src="images/wechat.jpg" alt="微信支付"></a>
						</td>
						
					</tr>	
					
	        	</table>
	        	
	        </s:if>
	            
            <div class="clear"></div>
		</div>
       <div class="clear"></div>
    </div>
 </div>



</div>

<script type="text/javascript">
	function dopay(paytype){
		// 信息校验
		/* var name = $("#fname").val();
		if(name==null || name==""){
			layer.msg("请正确填写收货人!");
			return;
		} */
		var phone = $("#fphone").val();
		if(phone==null || phone=="" || !/^[0-9]*$/.test(phone)){
			layer.msg("收货电话填写错误!");
			return;
		}
		var address = $("#faddress").val();
		if(address==null || address==""){
			layer.msg("收货地址填写错误!");
			return;
		}
		
		$("#paytype").val(paytype);
		$("#payform").submit();
	}
</script>

</body>
</html>
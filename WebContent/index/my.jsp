<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main">
    <div class="contentmy">
    	<div class="login_panel"  style="width:600px">	
        	
        	<span style="color:red;"><s:actionmessage/></span>
        	
			
        	
			<h3>账户密码</h3>
			
			<form action="my.action" method="post">
       			<input type="hidden" name="user.id" value="${sessionScope.user.id}"/>
       			<input type="hidden" name="type" value="102"/>
       			
				<table class="cart_table">
					<tr>
						<td>原密码: <input type="text" name="user.password" style="width:80%" placeholder="必填"></td>
					</tr>		
					<tr>
						<td>新密码: <input type="text" name="user.passwordNew" style="width:80%" placeholder="新密码"></td>
					</tr>		
		        </table><br>
		        	
		         <div class="buttons">
	            	<div style="float:right; padding-bottom: 24px">
	            		<button style= "background-color: #4CAF50; /* Green */
									    border: none;
									    color: white;
									    padding: 12px 264px;
									    text-align: center;
									    text-decoration: none;
									    display: inline-block;
									    font-size: 16px">提交保存</button>
	            	</div>
	            </div>
            
	        </form>
	        
	        
	        <div class="clear"></div>
        	
        	
        	<h3>收货信息</h3>
			
			<form action="my.action" method="post">
       			<input type="hidden" name="user.id" value="${sessionScope.user.id}"/>
       			<input type="hidden" name="type" value="101"/>
       			
				<table class="cart_table">
					<tr>
						<td>电话: <input type="text" name="user.phone" value="${sessionScope.user.phone}" style="width:80%"></td>
					</tr>			
					<tr>
						<td>地址: <input type="text" name="user.address" value="${sessionScope.user.address}" style="width:80%"></td>
					</tr>
		        </table><br>
		        	
		         <div class="buttons">
	            	<div style="float:right; padding-bottom: 24px">
	            		<button style= "background-color: #4CAF50; /* Green */
									    border: none;
									    color: white;
									    padding: 12px 264px;
									    text-align: center;
									    text-decoration: none;
									    display: inline-block;
									    font-size: 16px">提交保存</button>
	            	</div>
	            </div>
            
	        </form>
	        
	        <div class="clear"></div>
        	
        	
        	
			<h3>支付密码</h3>
			
			<form action="my.action" method="post">
       			<input type="hidden" name="user.id" value="${sessionScope.user.id}"/>
       			<input type="hidden" name="type" value="103"/>
       			
				<table class="cart_table">
					<tr>
						<td>原密码: <input type="text" name="user.payword" style="width:80%" placeholder="必填"></td>
					</tr>		
					<tr>
						<td>新密码: <input type="text" name="user.passwordNew" style="width:80%" placeholder="新密码"></td>
					</tr>		
		        </table><br>
		        	
		         <div class="buttons">
	            	<div style="float:right; padding-bottom: 24px">
	            		<button style= "background-color: #4CAF50; /* Green */
									    border: none;
									    color: white;
									    padding: 12px 264px;
									    text-align: center;
									    text-decoration: none;
									    display: inline-block;
									    font-size: 16px">提交保存</button>
	            	</div>
	            </div>
            
	        </form>
	        
            <div class="clear"></div>
            
		</div>
		
       <div class="clear"></div>
       
    </div>
    
 </div>



</div>

</body>
</html>
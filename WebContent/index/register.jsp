 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main">
    <div class="contentreg" >
    	 <div class="login_panel">
    		<h3>注册新账户</h3>
    		<s:actionmessage style="color:red;"/>
    		<form action="register.action" method="post" id="form_register">
				用户名 : <input name="user.username" type="text"  class="field" placeholder="请输入用户名" required="required">
            	登录密码 : <input name="user.password" type="password" class="field" placeholder="请输入密码" required="required">
				电话 : <input name="user.phone" type="text"  class="field" placeholder="请输入电话" maxlength="11">
				地址 : <input name="user.address" type="text"  class="field" placeholder="请输入地址">
				邮箱 : <input name="user.mail" type="text"  class="field" placeholder="请输入邮箱">
				支付密码 : <input name="user.payword" type="password" class="field" placeholder="请输入密码" required="required">
		   	</form>
            <div class="buttons">
            	<div>
            		<div style="float:right; padding-top: 10px; padding-right: 34%;">
            			<button class="grey" onclick="$('#form_register').submit();">确认注册</button>
            		</div>
            			<a href="login.jsp" style="float:right; padding-top: 10px; padding-right: 35%; font-size: 14px">登录已有账户</a></div>
            </div>
            <div class="clear"></div>
    	</div>  
       <div class="clear"></div>
    </div>
 </div>


</div>

</body>
</html>
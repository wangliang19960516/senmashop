<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main">
    <div class="contentlog">
    	<div class="login_panel" type="background:#DDD;">	
        	<h3 style="text-align:center;">登录</h3>
        	<s:actionerror style="color:red;"/>
        	<form action="login.action" method="post" id="form_login">
               	用户名 : <input name="user.username" type="text" class="field" placeholder="请输入用户名">
            	密码 : <input name="user.password" type="password" class="field" placeholder="请输入密码">
            </form>
            <div class="buttons">
            	<div style="float:right; padding-top: 10px; padding-right: 34%;">
            		<div></div><button class="grey"  style="float:left;  padding-left: 15px; " onclick="$('#form_login').submit();">确认登录</button>
            	</div>
            		<p><a href="register.jsp" style="float:right; padding-top: 10px; padding-right: 38%; font-size: 14px">注册新账户</a></div>
            		
            </div>
            <div class="clear"></div>
		</div>
       <div class="clear"></div>
    </div>
 </div>



</div>

</body>
</html>
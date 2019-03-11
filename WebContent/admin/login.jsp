<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
</head>

<!--设置背景 -->
<body style="background:#DDD;background-size:100%;">
	
	<div class="container" style="text-align:center; margin-top:80px;">

		<c:if test="${msg!=null}"><div class="alert alert-danger text-center">${msg}</div></c:if>
		<h3 style="text-align:center; margin-top:120px;">欢迎登录</h3>
		<form action="login.action" method="post" class="form-horizontal" style="margin-top:4%;">
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="text" class="form-control" style="height:auto;padding:12px;" placeholder="输入用户名" name="admin.username" value="admin">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="password" class="form-control" style="height:auto;padding:12px;" placeholder="输入密码" name="admin.password" value="admin">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">			
					<button style= "background-color: #4CAF50; /* Green */
										border-radius:12px 12px 12px 12px;									    
									    border: none;
									    color: white;
									    padding: 12px 36px;
									    text-align: center;
									    text-decoration: none;
									    display: inline-block;
									    font-size: 16px" type="submit">登录后台</button>
				</div>
			</div>
		</form>

	</div>

</body>
</html>

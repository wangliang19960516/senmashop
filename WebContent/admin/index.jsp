<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>后台管理</title>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container">

	
	<div style="padding-left:280px;">
	<%@include file="header.jsp" %>
	</div>
	
	<br><br>
	
	<div class="alert alert-success" 
		style="text-align:center; 
		font-size:20px;"
		role="alert">·${msg}·</div>
	
</div>	
</body>
</html>
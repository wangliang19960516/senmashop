<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>产品列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container">

	
	<div style="padding-left:280px;">
	<%@include file="header.jsp" %>
	</div>
	
	
	<br>
		
	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%" style="width: 10%;text-align: center;">ID</th>
			<th width="10%" style="width: 10%;text-align: center;">封面</th>
			<th width="10%" style="width: 10%;text-align: center;">名称</th>
			<th width="10%" style="width: 10%;text-align: center;">价格</th>
			<th width="10%" style="width: 10%;text-align: center;">数量</th>
			<th width="10%" style="width: 10%;text-align: center;">类目</th>
		</tr>
		
		<c:forEach var="item" items="${itemList}">
	         <tr>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 100px;text-align: center;">${item.id}</p></td>
	         	<td><p style="padding-left:60px;"><a href="../index/detail.action?productid=${item.product.id}" target="_blank"><img src="../${item.product.cover}" width="100px"></a></p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 100px;text-align: center;"><a href="../index/detail.action?productid=${item.product.id}" target="_blank">${item.product.name}</a></p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 100px;text-align: center;">${item.price}</p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 100px;text-align: center;">${item.amount}</p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 100px;text-align: center;">${item.product.category.name}</p></td>
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
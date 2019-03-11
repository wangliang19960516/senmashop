<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>产品列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
	<div class="container" >
	
	<div style="padding-left:280px;">
	<%@include file="header.jsp" %>
	</div>
	
	<div class="text-right"><a class="btn btn-success" href="productA.action">添加产品</a></div>
<%-- 	
	<ul role="tablist" class="nav nav-tabs">
        <li role="presentation" <c:if test="${status==0}">class="active"</c:if>><a href="productList.action">全部产品</a></li>
        <li role="presentation" <c:if test="${status==1}">class="active"</c:if>><a href="productList.action?status=1">热销推荐</a></li>
        <li role="presentation" <c:if test="${status==2}">class="active"</c:if>><a href="productList.action?status=2">特价促销</a></li>
        <li role="presentation" <c:if test="${status==3}">class="active"</c:if>><a href="productList.action?status=3">最新上架</a></li>
    </ul> --%>

	<br >
	
	<form class="form-inline" style="padding-left:320px;" action="productSearch.action" id="serchform" method="post">
		<div class="form-group" >
			<label for="id">ID: </label>
			<input type="text" class="form-control" id="id" name="product.id">
		</div>
		<div class="form-group">
			<label for="name">名称: </label>
			<input type="text" class="form-control" id="name" name="product.name">
		</div>
		<a style="background-color: #4CAF50;" href="javascript:;" onclick="document.getElementById('serchform').submit();" type="submit" class="btn btn-default"> 搜 索 </a>
	</form>
	
	<br>
		
	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%" style="width: 10%;text-align: center;">ID</th>
			<th width="10%" style="width: 10%;text-align: center;">封面</th>
			<th width="15%" style="width: 10%;text-align: center;">名称</th>
			<th width="10%" style="width: 10%;text-align: center;">价格</th>
			<th width="15%" style="width: 10%;text-align: center;">简介</th>
			<th width="15%" style="width: 10%;text-align: center;">库存</th>
			<th width="10%" style="width: 10%;text-align: center;">数量</th>
			<th width="10%"  style="width: 10%;text-align: center;">操作</th>
			<th width="10%" style="width: 10%;text-align: center;">管理</th>
		</tr>
		
		<c:forEach var="product" items="${productList}">
	         <tr>
	         	<td><p style="width: 100%;height: 5px;display: block;line-height: 120px;text-align: center;">${product.id}</p></td>
	         	<td><p ><a href="../index/detail.action?productid=${product.id}" target="_blank"><img src="../${product.cover}" width="100px"></a></p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 120px;text-align: center;"><target="_blank">${product.name}</a></p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 120px;text-align: center;">${product.price}</p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 120px;text-align: center;">${product.intro}</p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 120px;text-align: center;">${product.stock}</p></td>
	         	<td><p style="width: 100%;height: 45px;display: block;line-height: 120px;text-align: center;">${product.category.name}</p></td>
	         	<td>
					<br><br>
					<a class="btn btn-primary" style="padding-top:0%; width: 100%;height: 45px;line-height: 45px;text-align: center;" href="productUp.action?id=${product.id}&page=${page}&status=${status}">修改</a>
					<a class="btn btn-danger" style="width: 100%;height: 45px;line-height: 28px;text-align: center;" href="productDelete.action?product.id=${product.id}&page=${page}&status=${status}">删除</a>
				</td>
	         	
				<td>
					<c:if test="${product.isShow}" >
						<a  class="btn btn-warning"  style="width: 100%;height: 45px;line-height: 28px;text-align: center;"  href="productShowDelete.action?id=${product.id}&page=${page}&status=${status}">取消推荐</a>
					</c:if>
					<c:if test="${!product.isShow}">
						<a class="btn btn-info" href="productShowA.action?id=${product.id}&page=${page}&status=${status}">设为推荐</a>
					</c:if>
					<c:if test="${product.isSale}">
						<a class="btn btn-warning" style="width: 100%;height: 45px;line-height: 28px;text-align: center;"  href="productSaleDelete.action?id=${product.id}&page=${page}&status=${status}">取消促销</a>
					</c:if>
					<c:if test="${!product.isSale}">
						<a class="btn btn-info"   href="productSaleA.action?id=${product.id}&page=${page}&status=${status}">设为促销</a>
					</c:if>
					<c:if test="${product.isNew}">
						<a class="btn btn-warning" style="width: 100%;height: 45px;line-height: 28px;text-align: center;"  href="productNewDelete.action?id=${product.id}&page=${page}&status=${status}">取消最新</a>
					</c:if>
					<c:if test="${!product.isNew}">
						<a class="btn btn-info" href="productNewA.action?id=${product.id}&page=${page}&status=${status}">设为最新</a>
					</c:if>
				</td>
				
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
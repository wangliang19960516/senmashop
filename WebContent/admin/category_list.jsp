<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>类目列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container">

	
	<div style="padding-left:280px;">
	<%@include file="header.jsp" %>
	</div>
	
	
	<br>
	
	<div  style="padding-left:320px;">
		<form class="form-inline"  method="post" action="categoryAdd.action">
			<input type="text" class="form-control" id="input_name" name="category.name" placeholder="输入类目名称" required="required" style="width: 500px">
			<input type="submit" class="btn btn-success" value="添加类目"/>
		</form>
	</div>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%" style="width: 10%;text-align: center;">ID</th>
		<th width="10%"style="width: 10%;text-align: center;" >名称</th>
		<th width="10%"style="width: 10%;text-align: center;" >操作</th>
	</tr>
	
	<c:forEach var="category" items="${categoryList}">
         <tr>
         	<td style="width: 10%;text-align: center;"><p>${category.id}</p></td>
         	<td style="width: 10%;text-align: center;"><p>${category.name}</p></td>
			<td style="width: 10%;text-align: center;">
				<a class="btn btn-primary"  style="padding-left:34px;padding-right:34px;"href="categoryUp.action?id=${category.id}">修改</a>
				<a class="btn btn-danger" style="padding-left:34px;padding-right:34px;" href="categoryDelete.action?category.id=${category.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

</div>
</body>
</html>
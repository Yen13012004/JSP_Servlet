<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Student Page!</title>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 class="text-center">LIST STUDENT</h1>
		<a class="btn btn-primary mb-1" href="initInsertStudent" >ADD NEW STUDENT</a>
		<%-- <h3 style="color:green">${success }</h3> --%>
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
	                <th>Name</th>
	                <th>Gender</th>
	                <th>Birthday</th>
	                <th>Address</th>
	                <th>Email</th>
	                <th>Class Name</th>
	                <th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="s">
					<tr>
						<td>${s.student.id}</td>
	                    <td>${s.student.name}</td>
	                    <td>${s.student.gender?"Nam":"Nữ"}</td>
	                    <td>${s.student.birthday}</td>
	                    <td>${s.student.address}</td>
	                    <td>${s.student.email}</td>
	                    <td>${s.class_name}</td>
	                    <td>
	                    	<a name="" id="" class="btn btn-primary " href="#">UPDATE</>
	                    	<a name="" id="" class="btn btn-danger " href="#">DELETE</>
	                    </td>
					</tr> 
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
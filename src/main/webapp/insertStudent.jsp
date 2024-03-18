<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Student Page</title>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
    <h1 class="text-center">Add New Student</h1>
    <form action="insertStudent" method="post">
        <div class="mb-3 mt-3">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="Name..">
        </div>

        <div class="mb-3 mt-3">
        	<label for="gender">Gender</label></br>
            <label for="form-check-label">
            <input type="radio" name="gender" class="form-check-input" value="true">Male
            <input type="radio" name="gender" class="form-check-input" value="false">Female
            </label>
            
        </div>

        <div class="mb-3 mt-3">
            <label for="birthday">Birthday</label>
            <input type="date" name="birthday" id="birthday" class="form-control">
        </div>

        <div class="mb-3 mt-3">
            <label for="address">Address</label>
            <input type="text" name="address" id="address" class="form-control" placeholder="Address..">
        </div>
        
        <div class="mb-3 mt-3">
            <label for="email">Email</label>
            <input type="text" name="email" id="email" class="form-control" placeholder="Email...">
        </div>

        <div class="mb-3 mt-3">
            <label for="select">Class Name</label>
            <select class="form-select" name="id">
                <option>--Choose--</option>
                <c:forEach items="${listC}" var="cl">
                    <option value="${cl.id}">${cl.class_name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
        <input type="reset" class="btn btn-danger" value="Clear">
    </form>
</div>
</body>
</html>
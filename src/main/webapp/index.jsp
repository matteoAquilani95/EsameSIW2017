<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="WEB-INF/layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Web Galleria</title>
</head>
<body>
	<div class="container">
		<h1>Welcome, User</h1>
		
		<form class="form-inline my-2 my-lg-0" action='<spring:url value="/search"/>'>
          <input class="form-control mr-sm-2" type="text" name="m" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
	</div>
</body>
</html>
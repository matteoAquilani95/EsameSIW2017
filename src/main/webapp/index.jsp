<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="WEB-INF/layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Gallery Web</title>
</head>
<body>
	<div class="container">

		<div align="center">
			<h1>Welcome in this Art Gallery</h1> <br> <br> <br>

			<security:authorize access="isAuthenticated()">
				<a href="<spring:url value="/search" />" class="btn btn-primary btn-lg"> Personalized Search!! </a>
			</security:authorize>
			
		</div>
	</div>
</body>
</html>
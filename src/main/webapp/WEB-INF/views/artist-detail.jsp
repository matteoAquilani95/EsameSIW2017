<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Detail Artist</title>
</head>
<body>

	<div class="container">
		<br>
		<p>Name: ${artist.name}</p>
		<p>Surname: ${artist.surname}</p>
		<p>Nationality: ${artist.nationality}</p>
		<p>Date of birth : ${artist.dateOfBirth}</p>
		<p>Death Date: ${artist.deathDate}</p>
		<br>
		
		<div class="panel panel-primary">
			<div class="panel-heading">Add Section</div>
			<div class="panel-body">
				<a href="<spring:url value="/picture/${artist.id}" />" 
				     				class="btn btn-primary btn-lg"> Add Picture </a>
			</div>
		</div>
		<div class="panel panel-danger">
			<div class="panel-heading">Delete Section</div>
			<div class="panel-body">
				<a href="<spring:url value="/edit/${artist.id}" />"
					class="btn btn-warning btn-lg"> Edit </a> 
				<a href="<spring:url value="/artists/remove/${artist.id}" />"
					class="btn btn-danger btn-lg"> Remove </a>
			</div>
		</div>
	</div>

</body>
</html>
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
			<div class="panel-heading">Picture Section</div>
			<div class="panel-body">
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<spring:url value="/picture/${artist.id}" />" 
				     				class="button"> Add Picture </a>
				</security:authorize>
				
				<a href="<spring:url value="/pictureList/${artist.id}" />" 
				     				class="button"> List Picture </a>
			</div>
		</div>

		<security:authorize access="hasRole('ROLE_ADMIN')">
			<div class="panel panel-warning">
				<div class="panel-heading">Artist Section</div>
				<div class="panel-body">
					<a href="<spring:url value="/edit/${artist.id}" />"
						class="button"> Edit </a> 
					<a href="<spring:url value="/artists/remove/${artist.id}" />"
						class="button"> Remove </a>
				</div>
			</div>
		</security:authorize>
	</div>

</body>
</html>
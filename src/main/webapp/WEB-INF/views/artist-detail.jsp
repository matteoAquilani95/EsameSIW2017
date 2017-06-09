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
		<br> 
		<p><a href="<spring:url value="/artists/edit/${artist.id}" />"
			class="btn btn-warning btn-lg"> Edit </a>
			<a href="<spring:url value="/artists/remove/${artist.id}" />" 
			    class="btn btn-danger btn-lg"> Remove </a>
	    </p>
	</div>

</body>
</html>
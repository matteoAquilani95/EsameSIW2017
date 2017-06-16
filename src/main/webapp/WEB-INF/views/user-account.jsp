<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>

<!-- per mostrare il primo blog dell'utente e rimuovere un blog-->

<title>Dettaglio di ${user.name}</title>
</head>
<body>
	<div class="container">
		<br>
		<security:authorize access="hasRole('ROLE_ADMIN')">
			<a href="artist" class="btn btn-primary btn-lg"> Add Artist </a>
		</security:authorize>	
		
		</div>
	</body>
</html>
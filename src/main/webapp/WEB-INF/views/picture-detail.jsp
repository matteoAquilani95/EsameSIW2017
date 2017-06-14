<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title> Detail of ${picture.title}</title>
</head>
<body>

	<div class="container">
	
	<p><strong>Title:</strong> ${picture.title}</p>
	<p><strong>Creation Date:</strong> ${picture.creationDate}</p>
	<p><strong>Technique:</strong> ${picture.technique}</p>
	
	<img src="<c:url value="${picture.link}" />" alt="${picture.title}" style="width:60%">
	
	</div>

</body>
</html>
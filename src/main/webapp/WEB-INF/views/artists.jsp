<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>List of All Artist</title>
</head>
<body>
	<div class="container">
		<ul class="list-group">
			<c:forEach items="${artists}" var="artist">
				<li class="list-group-item">${artist.name}</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>
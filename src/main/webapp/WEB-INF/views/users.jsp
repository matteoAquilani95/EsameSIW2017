<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>List Users</title>
</head>
<body>
	<section id="main" class="wrapper">
	 	<section>
		<div class="container">
		<h2>View of users:</h2>
		<br>
		<table class="table-wrapper">
			<thead>
				<tr>
					<th>Username</th>
					<th>Operations</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td><c:out value="${user.name}" /></td>
						<td><a href="<spring:url value="/users/remove/${user.id}" />"
							class="button"> Remove </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</section>
	</section>
</body>
</html>
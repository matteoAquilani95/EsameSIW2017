<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>List Users</title>
</head>
<body class="landing">
	
	<section id="banner">
		<h2>Users List</h2>
	</section>
	
	 <section id="one" class="wrapper style1">
		<div class="container">
		<table class="table-wrapper">
			<thead>
				<tr>
					<th>Username</th>
					<th><div align="right">Operations</div></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td><c:out value="${user.name}" /></td>
						<td align="right"><a href="<spring:url value="/users/remove/${user.id}" />"
							class="button"> Remove </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</section>
	<footer id="footer">
		<div class="inner">
			<ul class="icons">
				<li><a href="#" class="icon fa-facebook"> <span
						class="label">Facebook</span>
				</a></li>
				<li><a href="#" class="icon fa-twitter"> <span
						class="label">Twitter</span>
				</a></li>
				<li><a href="#" class="icon fa-instagram"> <span
						class="label">Instagram</span>
				</a></li>
				<li><a href="#" class="icon fa-linkedin"> <span
						class="label">LinkedIn</span>
				</a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Images: <a href="http://google.it">Google & Wikipedia</a>.
				</li>
				<li>Design: <a href="http://templated.co">TEMPLATED</a>.
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>List of Picture of ${artist.name}</title>
</head>
<body class="landing">

	<section id="banner">
		<security:authorize access="isAuthenticated()">
			<h2>Picture List Of ${artist.name}</h2>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<a href="<spring:url value="/picture/${artist.id}" />"
					class="button special"> Add Picture </a>
			</security:authorize>
		</security:authorize>
	</section>
	<security:authorize access="isAuthenticated()">
		<section id="one" class="wrapper style1">
			<div class="container">
				<table class="table-wrapper">
					<thead>
						<tr>
							<th>Picture name</th>

							<security:authorize access="hasRole('ROLE_ADMIN')">
								<th><div align="right">Operation</div></th>
							</security:authorize>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${picturesL}" var="picture">
							<tr>

								<td><a
									href="<spring:url value="/pictureList/detail/${picture.id}" />">
										<c:out value="${picture.title}" />
								</a></td>

								<security:authorize access="hasRole('ROLE_ADMIN')">
									<td align="right"><a
										href="<spring:url value="/picture/remove/${picture.id}" />"
										class="button"> Remove </a></td>
								</security:authorize>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</security:authorize>

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
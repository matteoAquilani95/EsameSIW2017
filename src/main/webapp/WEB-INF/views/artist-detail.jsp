<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Detail Artist ${artist.name}</title>
</head>
<body class="landing">
	
	<section id="banner">
		<h2>${artist.name} ${artist.surname}</h2>
	</section>

	<section id="one" class="wrapper style1">
		<div class="container">
			<article class="feature left">
				<span class="image"><img src="<c:url value="#" />" alt="${artist.name}"/></span>
				<div class="content">
					<p><strong>Nationality:</strong> ${artist.nationality}</p>
					<p><strong>Date of birth :</strong> ${artist.dateOfBirth}</p>
					<p><strong>Death Date:</strong> ${artist.deathDate}</p>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<ul class="actions">
							<li><a href="<spring:url value="/edit/${artist.id}" />"
								class="button"> Edit </a></li>
							<li><a href="<spring:url value="/artists/remove/${artist.id}" />"
								class="button"> Remove </a></li>
						</ul>
					</security:authorize>
				</div>
			</article>
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
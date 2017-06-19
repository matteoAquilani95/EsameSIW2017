<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="WEB-INF/layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Gallery Web</title>
</head>
<body class="landing">

	<!-- Banner -->
	<section id="banner">
		<h2>Welcome in this Art Gallery</h2>
		<security:authorize access="! isAuthenticated()">
			<ul class="actions">
				<li><a href="<spring:url value="/register" />" class="button big special"> Sign up </a></li>
				<li><a href="<spring:url value="/login" />"class="button big special" >Login</a></li>
			</ul>
			<hr />
			<img src="<c:url value="/resources/images/home.jpg"/>" 
						width="60%" alt="" />
		</security:authorize>
	</section>
	
	<security:authorize access="isAuthenticated()">
	 <!-- One -->
	<section id="one" class="wrapper style1">
		<div class="inner">
			<article class="feature left">
				<span class="image"><img
					src="<c:url value="/resources/images/artistList2.PNG"/>" alt="" /></span>
				<div class="content">
					<h2>You can access into the artists list</h2>
					<ul class="actions">
						<li><a href="<spring:url value="/artists" />" class="button alt">More</a></li>
					</ul>
				</div>
			</article>
			
			<article class="feature right">
				<span class="image"><img src="<c:url value="/resources/images/search.jpg"/>" alt="" /></span>
				<div class="content">
					<h2>You can do a custom search</h2>
					<ul class="actions">
						<li><a href="<spring:url value="/search" />" class="button alt">More</a></li>
					</ul>
				</div>
			</article>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<article class="feature left">
				<span class="image"><img
					src="<c:url value="/resources/images/newArtist.PNG"/>" alt="" /></span>
				<div class="content">
					<h2>You can insert new artist</h2>
					<ul class="actions">
						<li><a href="<spring:url value="/artist" />" class="button alt">More</a></li>
					</ul>
				</div>
			</article>
			</security:authorize>
		</div>
	</section>
	</security:authorize>

	<!-- Footer -->
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
	<%-- 
			<div align="center">
			<h1>Welcome in this Art Gallery</h1> <br> <br> <br>

			<security:authorize access="isAuthenticated()">
				<a href="<spring:url value="/search" />" class="btn btn-primary btn-lg"> Personalized Search!! </a>
			</security:authorize> 
			</div>
			--%>

</body>
</html>
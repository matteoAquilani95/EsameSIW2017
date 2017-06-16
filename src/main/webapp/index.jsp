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
		</security:authorize>
	</section>
	
	<security:authorize access="isAuthenticated()">
	 <!-- One -->
	<section id="one" class="wrapper style1">
		<div class="inner">
			<article class="feature left">
				<span class="image"><img
					src="<c:url value="/resources/images/pic03.jpg"/>" alt="" /></span>
				<div class="content">
					<h2>You can access into the artists list</h2>
					<ul class="actions">
						<li><a href="<spring:url value="/artists" />" class="button alt">More</a></li>
					</ul>
				</div>
			</article>
			
			<article class="feature right">
				<span class="image"><img src="<c:url value="/resources/images/pic02.jpg"/>" alt="" /></span>
				<div class="content">
					<h2>You can do a custom search</h2>
					<ul class="actions">
						<li><a href="<spring:url value="/search" />" class="button alt">More</a></li>
					</ul>
				</div>
			</article>
		</div>
	</section>
	</security:authorize>

	<%--<!-- Two -->
	<section id="two" class="wrapper special">
		<div class="inner">
			<header class="major narrow">
				<h2>Aliquam Blandit Mauris</h2>
				<p>Ipsum dolor tempus commodo turpis adipiscing Tempor placerat
					sed amet accumsan</p>
			</header>
			<div class="image-grid">
				<a href="#" class="image"><img src="images/pic03.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic04.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic05.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic06.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
				<a href="#" class="image"><img src="images/pic10.jpg" alt="" /></a>
			</div>
			<ul class="actions">
				<li><a href="#" class="button big alt">Tempus Aliquam</a></li>
			</ul>
		</div>
	</section>

	<!-- Three -->
	<section id="three" class="wrapper style3 special">
		<div class="inner">
			<header class="major narrow	">
				<h2>Magna sed consequat tempus</h2>
				<p>Ipsum dolor tempus commodo turpis adipiscing Tempor placerat
					sed amet accumsan</p>
			</header>
			<ul class="actions">
				<li><a href="#" class="button big alt">Magna feugiat</a></li>
			</ul>
		</div>
	</section>

	<!-- Four -->
	<section id="four" class="wrapper style2 special">
		<div class="inner">
			<header class="major narrow">
				<h2>Get in touch</h2>
				<p>Ipsum dolor tempus commodo adipiscing</p>
			</header>
			<form action="#" method="POST">
				<div class="container 75%">
					<div class="row uniform 50%">
						<div class="6u 12u$(xsmall)">
							<input name="name" placeholder="Name" type="text" />
						</div>
						<div class="6u$ 12u$(xsmall)">
							<input name="email" placeholder="Email" type="email" />
						</div>
						<div class="12u$">
							<textarea name="message" placeholder="Message" rows="4"></textarea>
						</div>
					</div>
				</div>
				<ul class="actions">
					<li><input type="submit" class="special" value="Submit" /></li>
					<li><input type="reset" class="alt" value="Reset" /></li>
				</ul>
			</form>
		</div>
	</section> --%>

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
				<li>Images: <a href="http://unsplash.com">Unsplash</a>.
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
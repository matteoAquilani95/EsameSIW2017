<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title> Detail of ${picture.title}</title>
</head>
<body class="landing">

	<section id="banner">
		<h2>${picture.title}</h2>
	</section>	
	
	<section id="one" class="wrapper style1">
		<div class="container">
			<article class="feature left">
				<span class="image"><img src="<c:url value="${picture.link}" />" alt="${picture.title}"/></span>
				<div class="content">
					<p><strong>Creation Date:</strong> ${picture.creationDate}</p>
					<p><strong>Technique:</strong> ${picture.technique}</p>
					<p><strong>Dimension:</strong> ${picture.dimension} cm</p>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Log In</title>
</head>
<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin {
	margin-bottom: 10px;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
<body class="landing">
	
	<section id="banner">
		<form class="form-signin" role="form" action="<spring:url value="/j_spring_security_check" />" method="POST">
			<h2 class="form-signin-heading">Please sign in</h2>
			
			<c:if test="${param.error eq true}">
				<div class="alert alert-danger"> Email e Password Wrong! </div>
			</c:if>
			
			<input type="email" name="email" class="form-control" placeholder="Email" required autofocus> 
			<input type="password" name="password" class="form-control" placeholder="Password" required>
			<button class="button special" type="submit">Sign in</button>
		</form>
	</section>
	
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
</body>
</html>
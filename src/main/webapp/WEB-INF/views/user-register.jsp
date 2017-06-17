<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>Registrazione Utente</title>

</head>
<body class="landing">

	<!-- form -->
	<section id="four" class="wrapper style2 special">
		<form:form commandName="user"
			cssClass="form-horizontal registrationForm">

			<c:if test="${param.success eq true }">
				<blockquote>
					<p>Registration completed! </p>
					<a href='<spring:url value="/login"/>' class="button alt small">
						Login</a>
				</blockquote>
				<hr/>
			</c:if>

			<header class="major narrow">
				<h1>Registration:</h1>
			</header>

			<div class="container 75%">
				<div align="center">
					<div class="6u 12u$(xsmall)">
						<form:input path="name" cssClass="form-control" placeholder="Name"/>
						<form:errors path="name" />
					</div>
					<br>
					<div class="6u 12u$(xsmall)">
						<form:input path="email" cssClass="form-control" placeholder="Email"/>
						<form:errors path="email" />
					</div>
					<br>
					<div class="6u 12u$(xsmall)" align="center">
						<form:password path="password" cssClass="form-control" placeholder="Password"/>
						<form:errors path="password" />
					</div>
				</div>
			</div>
			<ul class="actions">
				<li><input type="submit" class="special" value="Save" /></li>
				<li><input type="reset" class="alt" value="Reset" /></li>
			</ul>
			<%-- <div class="form-group">
			<p class="col-sm-2 control-label"> Name: </p>
			<div class="col-sm-10">
				<form:input path="name" cssClass="form-control" />
				<form:errors path="name"/>
			</div>
		</div>

		<br>
		
		<div class="form-group">
			<p class="col-sm-2 control-label"> Email: </p>
			<div class="col-sm-10">
				<form:input path="email" cssClass="form-control" />
				<form:errors path="email"/>
			</div>
		</div>

		<br>
		
		<div class="form-group">
			<p class="col-sm-2 control-label"> Password: </p>
			<div class="col-sm-10">
				<form:password path="password" cssClass="form-control" />
				<form:errors path="password"/>
			</div>
		</div> 
		
		<br>

		<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" value="Save" class="btn btn-lg btn-primary" />
			</div>
		</div>--%>
		</form:form>
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
				<li>Images: <a href="http://unsplash.com">Unsplash</a>.
				</li>
				<li>Design: <a href="http://templated.co">TEMPLATED</a>.
				</li>
			</ul>
		</div>
	</footer>

</body>
</html>
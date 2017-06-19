<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>New Artist</title>
</head>
<body class="landing">

	<section id="banner">

		<form:form commandName="artist" cssClass="form-horizontal">

			<c:if test="${param.success eq true }">
				<div align="center"><blockquote>
					<p>
						<img src="<c:url value="/resources/images/Check.png"/>" width="2%" />
						Artist Inserted Successfully!
					</p>
					<a href='<spring:url value="/artists"/>' class="button alt small">
						Return to List artist</a>
				</blockquote>
				</div>
			</c:if>

			<header class="major narrow">
				<h3>Insert artist</h3>
			</header>
			<div class="container 75%">
				<div align="center">
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="name" cssClass="form-control"
								placeholder="Name" />
							<form:errors path="name" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="surname" cssClass="form-control"
								placeholder="Surname" />
							<form:errors path="surname" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="nationality" cssClass="form-control"
								placeholder="Nationality" />
							<form:errors path="nationality" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="dateOfBirth" cssClass="form-control"
								placeholder="Birth date" />
							<%-- <form:errors path="dateOfBirth" /> --%>
							${errorDate}
						</div>
					</div>
					<br>
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="deathDate" cssClass="form-control"
								placeholder="Death date" />
							<%-- <form:errors path="deathDate" /> --%>
							${errorDate}
						</div>
					</div>
					<br>
					
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="link" cssClass="form-control"
								placeholder="Artist photo URL" />
							<form:errors path="link" />
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-sm-2">
							<input type="submit" value="Save" class="button special" />
						</div>
					</div>

				</div>
			</div>
		</form:form>
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
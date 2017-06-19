<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>New Picture Art</title>
</head>
<body class="landing">
	<section id="banner">


		<c:if test="${param.success eq true }">
			<blockquote>
				<p>
					<img src="<c:url value="/resources/images/Check.png"/>" width="2%" />
					Picture Inserted Successfully!
				</p>
				<a href='<spring:url value="/pictureList/${artistID}"/>'
					class="button alt small"> Return to Pictures List</a>
			</blockquote>
		</c:if>

		<header class="major narrow">
			<h3>Insert picture</h3>
		</header>

		<form:form commandName="picture" method="post"
			cssClass="form-horizontal" enctype="multipart/form-data">

			<div class="container 75%">
				<div align="center">
					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="title" cssClass="form-control"
								placeholder="Title" />
							<form:errors path="title" />
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="creationDate" cssClass="form-control"
								placeholder="Creation Date" />
							<form:errors path="creationDate" />
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="technique" cssClass="form-control"
								placeholder="Technique" />
							<form:errors path="technique" />
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="dimension" cssClass="form-control"
								placeholder="Dimensions" />
							<form:errors path="dimension" />
						</div>
					</div>
					<br>

					<div class="form-group">
						<div class="col-sm-10">
							<form:input path="link" cssClass="form-control"
								placeholder="Picture URL" />
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
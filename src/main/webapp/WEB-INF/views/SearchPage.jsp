<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Web Gallery</title>
</head>
<body class="landing">
	<section id="banner">

		<div align="center">
			<h2>Do your custom search</h2> <br> <br>
			
			<security:authorize access="isAuthenticated()">

				<c:if test="${error eq true }">
					<div class="alert alert-danger">${errorMsg}</div>
				</c:if>
				<br>

				<div class="container 75%">
					<div align="center">
						<form class="form-inline"
							action='<spring:url value="/searchArtist"/>'>
							
							<div align="left"> <h1><strong>Search by name artist :</strong></h1></div>
							
							<input class="form-control" type="text" name="seatchArtist"
								placeholder="Search">
							<div align="right">
								<br>
								<button class="button special small" type="submit">Search</button>
							</div>
						</form>


						<form class="form-inline"
							action='<spring:url value="/searchTitlePicture"/>'>
							
							<div align="left"> <h1><strong>Search by title of picture :</strong></h1></div>
							
							<input class="form-control" type="text" name="searchTitlePicture"
								placeholder="Search">
							<div align="right">
								<br>
								<button class="button special small" type="submit">Search </button>
							</div>
						</form>



						<form class="form-inline"
							action='<spring:url value="/searchDate"/>'>
							<div align="left"> <h1><strong>Search by creation date :</strong></h1></div>
							<input class="form-control" type="text" name="searchDate"
								placeholder="Search">
							<div align="right">
								<br>
								<button class="button special small" type="submit">Search </button>
							</div>
						</form>
					</div>
				</div>
			</security:authorize>
		</div>
	</section>
</body>
</html>
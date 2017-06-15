<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Galleria Web</title>
</head>
<body>
	<div class="container">

		<div align="center">
			<h1>Welcome in this Gallery of Art</h1> <br> <br> <br>

			<security:authorize access="isAuthenticated()">
				
				<div class="alert alert-warning">${error}</div>
			
				<br>
				
				<form class="form-inline my-2 my-lg-0" action='<spring:url value="/searchArtist"/>'>
					<input class="form-control mr-sm-2" type="text" name="seatchArtist"
						placeholder="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search
						for name artist</button>
				</form>

				<form class="form-inline my-2 my-lg-0" action='<spring:url value="/searchTitlePicture"/>'>
					<input class="form-control mr-sm-2" type="text"
						name="searchTitlePicture" placeholder="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search
						for title of picture</button>
				</form>

				<form class="form-inline my-2 my-lg-0" action='<spring:url value="/searchDate"/>'>
					<input class="form-control mr-sm-2" type="text" name="searchDate"
						placeholder="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search
						for creation date</button>
				</form>
			</security:authorize>
		</div>
	</div>
</body>
</html>
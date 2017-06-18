<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>List of All Artist</title>
</head>
<body>
	<section id="main" class="wrapper">
	 <section>
	 	<div class="container">
		<h2> Artist List: </h2>
		
		<table class="table-wrapper">
			<thead>
				<tr>
					<th>Artist name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${artists}" var="artist">
					<tr>
						<td><a href="<spring:url value="/artists/${artist.id}" />"> 
							<c:out	value="${artist.name} ${artist.surname}" />
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</section>
	</section>

</body>
</html>
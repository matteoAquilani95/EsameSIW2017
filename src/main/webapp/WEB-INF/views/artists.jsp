<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>List of All Artist</title>
</head>
<body>
	<div class="container">
		<h2> Artist List: </h2>
		
		<table class="table table-bordered table-hover table-striped">
			<thead>
				<tr>
					<th>Artist name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${artists}" var="artist">
					<tr>
						<td><a href="<spring:url value="/artists/${artist.id}" />"> 
							<c:out	value="${artist.name}" />
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
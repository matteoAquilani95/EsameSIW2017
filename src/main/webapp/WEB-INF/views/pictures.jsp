<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>List of Picture of ${artist.name}</title>
</head>
<body>

	<div class="container">
		<h2> Picture List: </h2>
		
		<table class="table table-bordered table-hover table-striped">
			<thead>
				<tr>
					<th>Picture name</th>
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<th>Operation</th>
					</security:authorize>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${picturesL}" var="picture">
					<tr>
						
						<td><a href="<spring:url value="/pictureList/detail/${picture.id}" />"> 
							<c:out	value="${picture.title}" />
						</a></td>
						
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<td>
							<a href="<spring:url value="/picture/remove/${picture.id}" />"
								class="button"> Remove </a>
							</td>
						</security:authorize>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
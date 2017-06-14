<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Detail Artist</title>
</head>
<body>

	<div class="container">
		<br>
		<p>Name: ${artist.name}</p>
		<p>Surname: ${artist.surname}</p>
		<p>Nationality: ${artist.nationality}</p>
		<p>Date of birth : ${artist.dateOfBirth}</p>
		<p>Death Date: ${artist.deathDate}</p>
		<br>
		
		<div class="panel panel-primary">
			<div class="panel-heading">Picture Section</div>
			<div class="panel-body">
				<a href="<spring:url value="/picture/${artist.id}" />" 
				     				class="btn btn-primary btn-lg"> Add Picture </a>
			</div>
		</div>
		
		<div class="row">
    		<div class="col-md-4">
      			<div class="thumbnail">
      			
      				
      				<c:forEach var="pictureArt" items="${picturesList}">
      					 <a href="<c:url value="/pictureArt/${artist.id}/${pictureArt.link}" />" target="_blank">
         				 <img src="<c:url value="/pictureArt/${artist.id}/${pictureArt.link}" />" 
         				                    alt="${pictureArt.title}" style="width:100%">
        				</a>
        			<div class="caption">
        					<c:out value="${pictureArt.title}" />
            				<c:out value="${pictureArt.creationDate}" />
            				<c:out value="${pictureArt.technique}" />
            				<a href="<spring:url value="/picture/remove/${pictureArt.id}" />"
							class="btn btn-danger"> Remove </a>
          			</div>
          			</c:forEach>
      			</div>
    		</div>
    	</div>
		
		
		<div class="panel panel-warning">
			<div class="panel-heading">Artist Section</div>
			<div class="panel-body">
				<a href="<spring:url value="/edit/${artist.id}" />"
					class="btn btn-warning btn-lg"> Edit </a> 
				<a href="<spring:url value="/artists/remove/${artist.id}" />"
					class="btn btn-danger btn-lg"> Remove </a>
			</div>
		</div>
	</div>

</body>
</html>
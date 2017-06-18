<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title> Detail of ${picture.title}</title>
</head>
<body>
	<section id="one" class="wrapper style1">
		<div class="container">
			<article class="feature left">
				<span class="image"><img src="<c:url value="${picture.link}" />" alt="${picture.title}"/></span>
				<div class="content">
					<p><strong>Title:</strong> ${picture.title}</p>
					<p><strong>Creation Date:</strong> ${picture.creationDate}</p>
					<p><strong>Technique:</strong> ${picture.technique}</p>
				</div>
			</article>
		</div>
	</section>
	
	
	
	

</body>
</html>
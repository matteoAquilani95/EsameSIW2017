<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>List of All Artist</title>
</head>
<body class="landing">

	<section id="banner">
		<h2>Artists List</h2>
	</section>


	<section id="one" class="wrapper style1">
			<div class="container">	
				<table class="table-wrapper">
					<thead>
						<tr>
							<th>Artist name</th>
							<th><div align="right">Operation</div></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${artists}" var="artist">
							<tr>
								<td><a href="<spring:url value="/artists/${artist.id}" />">
										<c:out value="${artist.name} ${artist.surname}" />
								</a></td>
								<td align="right"><a href="<spring:url value="/pictureList/${artist.id}" />"
									class="button"> Pictures List</a> </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
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
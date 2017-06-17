<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>List Users</title>


<!-- <script type="text/javascript">
			$(document).ready(function() {
				$(".triggerRemove").click(function(e) {
					e.preventDefault();
					$("#modalRemove .removeBtn").attr("href", $(this).attr("href"));
					$("#modalRemove").modal();
				});
			});
</script> -->

</head>
<body>
	<section id="main" class="wrapper">
	 	<section>
		<div class="container">
		<h2>View of users:</h2>
		<br>
		<table class="table table-bordered table-hover table-striped">
			<thead>
				<tr>
					<th>Username</th>
					<th>Operations</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td><c:out value="${user.name}" /></td>
						<td><a href="<spring:url value="/users/remove/${user.id}" />"
							class="btn btn-danger"> Remove </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- <!-- Modal
		<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Remove User</h4>
					</div>
					<div class="modal-body">Really remove?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
						<a href="" class="btn btn-danger removeBtn">Remove</a>
					</div>
				</div>
			</div>
		</div> -->
	</div>
	</section>
	</section>
</body>
</html>
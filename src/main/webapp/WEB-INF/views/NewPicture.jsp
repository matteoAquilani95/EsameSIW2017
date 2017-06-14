<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>New Picture Art</title>
</head>
<body>

	<div class="container">
		<form:form commandName="picture" method="post" cssClass="form-horizontal" enctype="multipart/form-data">

			<c:if test="${param.success eq true }">
				<div class="alert alert-success">Insert Picture Success!</div>
			</c:if>

			<div class="form-group">
				<label for="title" class="col-sm-2 control-label"> Title: </label>
				<div class="col-sm-10">
					<form:input path="title" cssClass="form-control" />
					<form:errors path="title" />
				</div>
			</div>

			<div class="form-group">
				<label for="creationDate" class="col-sm-2 control-label">
					creation Date: </label>
				<div class="col-sm-10">
					<form:input path="creationDate" cssClass="form-control" />
					<form:errors path="creationDate" />
				</div>
			</div>

			<div class="form-group">
				<label for="technique" class="col-sm-2 control-label">
					Technique: </label>
				<div class="col-sm-10">
					<form:input path="technique" cssClass="form-control" />
					<form:errors path="technique" />
				</div>
			</div>

			<div class="form-group">
				<label for="dimension" class="col-sm-2 control-label">
					Dimension: </label>
				<div class="col-sm-10">
					<form:input path="dimension" cssClass="form-control" />
					<form:errors path="dimension" />
				</div>
			</div>

			<div class="form-group">
				<label for="dimension" class="col-sm-2 control-label"> Picture URL: </label>
				<div class="col-sm-10">
					<form:input type="url" path="link" cssClass="form-control"/>
					<form:errors path="link"/>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-2"> 
					<input type="submit" value="Save" class="btn btn-lg btn-primary" />
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
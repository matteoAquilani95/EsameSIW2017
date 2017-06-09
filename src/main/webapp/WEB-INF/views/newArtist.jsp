<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title> Nuovo Artista </title>
</head>
<body>

	<div class="container">
		<form:form commandName="artist" cssClass="form-horizontal">
	
		<c:if test="${param.success eq true }">
			<div class="alert alert-success">Artista Inserito!</div>
		</c:if>
	
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label"> Name: </label>
			<div class="col-sm-10">
				<form:input path="name" cssClass="form-control" />
				<form:errors path="name"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label"> Surname: </label>
			<div class="col-sm-10">
				<form:input path="surname" cssClass="form-control" />
				<form:errors path="surname"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label"> Nationality: </label>
			<div class="col-sm-10">
				<form:input path="nationality" cssClass="form-control" />
				<form:errors path="nationality"/>
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
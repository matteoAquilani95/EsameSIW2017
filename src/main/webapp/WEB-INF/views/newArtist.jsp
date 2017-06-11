<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title> New Artist </title>
</head>
<body>

	<div class="container">
		<form:form commandName="artist" cssClass="form-horizontal">
	
		<c:if test="${param.success eq true }">
			<div class="alert alert-success"> Insert Artist Success! </div>
		</c:if>
	
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label"> Name: </label>
			<div class="col-sm-10">
				<form:input path="name" cssClass="form-control" />
				<form:errors path="name"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="surname" class="col-sm-2 control-label"> Surname: </label>
			<div class="col-sm-10">
				<form:input path="surname" cssClass="form-control" />
				<form:errors path="surname"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="nationality" class="col-sm-2 control-label"> Nationality: </label>
			<div class="col-sm-10">
				<form:input path="nationality" cssClass="form-control" />
				<form:errors path="nationality"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="dateOfBirth" class="col-sm-2 control-label"> Date Of Birth: </label>
			<div class="col-sm-10">
				<form:input path="dateOfBirth" cssClass="form-control" />
				<form:errors path="dateOfBirth"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="deathDate" class="col-sm-2 control-label"> Death Date: </label>
			<div class="col-sm-10">
				<form:input path="deathDate" cssClass="form-control" />
				<form:errors path="deathDate"/>
			</div>
		</div>

			<center>
				<div class="form-group">
					<div class="col-sm-2">
						<input type="submit" value="Save" class="btn btn-lg btn-primary" />
					</div>
				</div>
			</center>

		</form:form>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<html>
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">

  <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<spring:url value="/" />">MyGalleria</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             
                <%-- <li><a href='<spring:url value="/" />'>Home</a></li> --%>
                
                <security:authorize access="hasRole('ROLE_ADMIN')">
               		<li><a href="<spring:url value="/users" />">Users</a></li>
               		<li><a href="<spring:url value="/account" />">My account</a></li>
               	</security:authorize>
               	
             	<security:authorize access="! isAuthenticated()">
             		<li><a href="<spring:url value="/register" />">Register</a></li>
             		<li><a href="<spring:url value="/login" />">Login</a></li>
             	</security:authorize>
              	
              	<security:authorize access="isAuthenticated()">
              	<li><a href="<spring:url value="/artists" />">List Artists</a></li>
              	<li><a href="<spring:url value="/logout" />">Logout</a></li>
              	</security:authorize>
              
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
	</div>
</div>



</body>
</html>



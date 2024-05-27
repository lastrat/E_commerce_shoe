<%-- 
    Document   : update
    Created on : May 24, 2024, 5:55:15 AM
    Author     : eunice
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: rgb(7, 140, 164)">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="user-list.jsp"
					class="btn btn-warning">Go back</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-7">  <div class="card">
			<div class="card-body">
                             <form action="updateuser2" method="post">
				<fieldset class="form-group">
					<label>ID:</label>
                    <input type="text" name="id" value="${user.id}" readonly />
				</fieldset>

				<fieldset class="form-group">
					<label>Username:</label>
                    <input type="text" name="name" value="${user.name}" />
				</fieldset>

                <fieldset class="form-group">
					<label>Email:</label>
                    <input type="text" name="email" value="${user.email}" />
				</fieldset>

				<fieldset class="form-group">
					<label>Phone Number:</label>
                    <input type="tel" name="tel" value="${user.tel}" />
				</fieldset>
                
                <fieldset class="form-group">
					<label>Role:</label>
                    <input type="text" name="role" value="${user.role}" />
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

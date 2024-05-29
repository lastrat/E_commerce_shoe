<%
Object user = session.getAttribute("role");
                if(user==null){
                response.sendRedirect("home.jsp");
    }
                else{
                String role = (String)session.getAttribute("role");
                if ("user".equals(role)){
                response.sendRedirect("home.jsp");
                    }
                
    }
%>
<%-- 
    Document   : category-list
    Created on : May 26, 2024, 12:24:34 PM
    Author     : eunice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Shoe Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
    <jsp:include page="sidebar.jsp" flush="true" />
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Shoe-Paradise </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Categories</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Categories</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/category-form.jsp" class="btn btn-success">New Category</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Description</th>
						
                        <th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="shoe" items="${categoryList}">

						<tr>
							<td><c:out value=" " /></td>
							<td><c:out value="${category.name}" /></td>
							<td><c:out value="${category.description}" /></td>
							<td><a href="edit?id=<c:out value='${category.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${category.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>

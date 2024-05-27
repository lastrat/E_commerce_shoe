<%-- 
    Document   : category-form
    Created on : May 26, 2024, 12:36:42 PM
    Author     : eunice
--%>

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
	<div class="container col-md-7">  <div class="card">
			<div class="card-body">
				<c:if test="${Category != null}">
					<form action="updateUser" method="post">
				</c:if>
				<c:if test="${Category == null}">
					<form action="insertUser" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${Category != null}">
      			Edit Category
      		</c:if>
						<c:if test="${Category == null}">
      			Add New Category
      		</c:if>
					</h2>
				</caption>
                                <button onclick="window.history.back()" class="btn btn-success">← Go Back</button>
				<c:if test="${Category != null}">
					<input type="hidden" name="id" value="<c:out value='${Category.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${Category.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Description</label> <input type="text"
						value="" class="form-control"  name="desc" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>


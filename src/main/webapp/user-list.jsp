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
    Document   : user-list
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/tree-viewer.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: rgb(25, 25, 16);">
	<div class="wrapper">
        <div class="left-side">
            <div class="logo">
                <img src="img/shop.png" alt="" />
            </div>
            <div class="left-content">
                <ul role="tablist">
                    <li role="presentation" class="active"><a href="index.jsp" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-home"></i></span>Welcome</a></li>
                    <li role="presentation"><a href="user" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-folder"></i></span>Users</a></li>
                    <li role="presentation"><a href="product" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-code"></i></span>Products</a></li>
                    <li role="presentation"><a href="#six" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-slideshare"></i></span>Orders</a></li>
                    <li role="presentation"><a href="logout.jsp" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-sign-out"></i></span>Logout</a></li>
                    <!--<li role="presentation"><a href="#source" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-thumbs-up"></i></span>Sources & Credits</a></li>
                    <li role="presentation"><a href="#support" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-support"></i></span>Support</a></li>
					-->
				</ul>
            </div>
            <div class="copyright">
                <p>Copyright &#169; 2024 <a href="#" >SE3</a></p>
            </div>
        </div>
		<!--Screen display-->
        <div class="right-side">
            <div class="right-content">
				<div class="row">
					<div class="container">
						<h3 class="text" style="margin-left: 350px; font-weight: bold; color: orange;">List of Users</h3>
						<hr>
			
						<br>
						<div class="table-container" style="width: 850px;">
							<table class="table table-bordered">
								<thead style="background: rgb(0, 0, 0); color: orange;">
									<tr>
										<th style="text-align: center;">ID</th>
										<th style="text-align: center;">Username</th>
										<th style="text-align: center;">Email</th>
										<th style="text-align: center;">Phone Number</th>										<th style="text-align: center;">Role</th>
										<th style="text-align: center;">Actions</th>
									</tr>
								</thead>
								<tbody style="background: rgb(239, 198, 152);">
									<c:forEach var="user" items="${userList}">
				
										<tr>
											<td><c:out value="${user.id}" /></td>
											<td><c:out value="${user.name}" /></td>
											<td><c:out value="${user.email}" /></td>
											<td><c:out value="${user.tel}" /></td>
											<td><c:out value="${user.role}" /></td>
											<td style="text-align: center; width: 200px;">
												<a href="updateuser?id=<c:out value='${user.id}' />" class="btn btn-primary">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="deleteuser?id=<c:out value='${user.id}' />"
												onclick="return confirm('Are you sure you want to delete this user?')" class="btn btn-danger">Delete</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
				
							</table>
						</div>
					</div>
				</div>
			</div>
                
          
        </div>
    </div>
</body>
</html>

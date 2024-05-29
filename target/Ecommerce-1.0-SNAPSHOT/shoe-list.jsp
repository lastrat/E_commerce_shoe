<%-- 
    Document   : shoe-list
    Created on : May 24, 2024, 2:18:05 AM
    Author     : Admin
--%>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Shoe Management Application</title>
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
					<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->
			
					<div class="container">
						<h3 class="text" style="margin-left: 350px; font-weight: bold; color: orange;">List of Shoes</h3>
						<hr>
						<div class="container text-left">
		
							<a href="<%=request.getContextPath()%>/shoe-form.jsp" class="btn btn-success">Add
								New Shoe</a>
						</div>
						<br>
						<div class="table-container" style="width: 850px;">
							<table class="table table-bordered">
								<thead style="background: rgb(0, 0, 0); color: orange;">
									<tr>
										<th style="text-align: center;">ID</th>
										<th style="text-align: center;">Name</th>
										<th style="text-align: center;">Price</th>
										<th style="text-align: center;">Image</th>
										<th style="text-align: center;">Actions</th>
									</tr>
								</thead>
								<tbody style="background: rgb(239, 198, 152);">
									<!--   for (Todo todo: todos) {  -->
									<c:forEach var="shoe" items="${shoeList}">
										<tr>
											<td style="width: 30px; color: white;"><c:out value="${shoe.id}" /></td>
											<td style="width: 200px; color: white;"><c:out value="${shoe.name}" /></td>
											<td style="width: 90px; color: white;"><c:out value="${shoe.price}" /></td>
                                                                                        <td style="width: 100px; color: white;"><img src="assets/images/<c:out value="${shoe.image}"/>" height="150px" width="150px"></td>
											<td style="text-align: center; width: 150px; color: white;"><a href="update?id=<c:out value='${shoe.id}' />" class="btn btn-primary">Edit</a>
												&nbsp;&nbsp;&nbsp;&nbsp; <a
												href="delete?id=<c:out value='${shoe.id}' />" class="btn btn-danger">Delete</a></td>
										</tr>
									</c:forEach>
									<!-- } -->
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


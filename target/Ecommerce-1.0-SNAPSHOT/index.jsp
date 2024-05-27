<%
Object username = session.getAttribute("role");
                if(username==null){
                response.sendRedirect("home.jsp");
    }
                else{
                
                if (username == "user"){
                response.sendRedirect("home.jsp");
                    }
                
    }
%>
          
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Admin DashBoard</title>
    <meta name="author" content="uttaraitpark">
    <meta name="copyright" content="uttaraitpark">
    <link rel="shortcut icon" type="image/png" href="img/shop.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/tree-viewer.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="wrapper">
        <div class="left-side">
            <div class="logo">
                <img src="img/shop.png" alt="" />
            </div>
            <div class="left-content">
                <ul role="tablist">
                    <li role="presentation" class="active"><a href="#one" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-home"></i></span>Welcome</a></li>
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
				<!--Home page-->
                <div id="one" class="content active fade in">
                    <h1><span>Shop Paradise</span> - Admin Dashboard</h1>
                    <div class="content-welcome">
                        <p>
                            
                        </p>
                    </div>
                    <div class="created">
                        <p>
                            Created: 24/05/2024
                            <br> Latest Update: 26/05/2024
                            <br> By: <span>SE3 Students of AICS.</span>
                            
                            <br>
                            <br> Thank you for visiting our website!
                        </p>
                    </div>
                </div>
				<!--End of Welcome page-->

				<!--Start *User page*-->
                <div id="two" class="content fade">
                    <h1>Users Page</h1>
                    <div id="user-list-container"></div>
                    
                </div>
				
				<!--Product page-->
                <div id="three" class="content fade">
                    <h1> Products page</h1>
                    <div>Place what the admin is supposed to do here. </div>

                </div>
				<!--End of the product page-->
                
                <div id="six" class="content fade">
				
				<!--Start *Order page*-->
				<div class="plugins-area">
					<h1>Orders Made</h1>
					<div>Place what the admin is supposed to do here. </div>
				</div>
				<!--End *Order page*-->
			</div>
                
          
        </div>
    </div>
</body>

</html>
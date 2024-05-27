<%-- 
    Document   : logout
    Created on : 23 mai 2024, 23:59:25
    Author     : lastrategie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>

<%
    
        if (session != null) {
            session.invalidate();
        }
        // Redirect to login page or home page
        response.sendRedirect("home.jsp");

%>

<%-- 
    Document   : login
    Created on : 26 mai 2024, 20:13:54
    Author     : lastrategie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Object username = session.getAttribute("username");
                if(username!=null){
                response.sendRedirect("home.jsp");
                }
                else{
%>
                    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login & Registration</title>
    <link rel="stylesheet" href="./assets/css/style_login.css" />
  </head>
  <body>
    <div class="container">
      <input type="checkbox" id="check" />
      <div class="form login">
        <header>Login</header>
        <form id="loginForm" action="login" method="post">
          <input
            type="email"
            placeholder="Enter your email"
            name="email"
            required
          />
          <div class="error-message" id="login-email-error"></div>
          <input
            type="password"
            placeholder="Enter your password"
            name="pwd"
            required
          />
          <div class="error-message" id="login-password-error"></div>
          <a href="#">Forgot password?</a>
          <input
            type="submit"
            class="button"
            value="Login"
          />
        </form>
        <div class="switch">
          <span>Don't have an account?</span>
          <label for="check">Signup</label>
        </div>
      </div>
      <div class="form registration">
        <header>Signup</header>
        <form id="signupForm" action="register" method="post">
          <input
            type="email"
            placeholder="Enter your email"
            name="email"
            required
          />
          <input
            type="text"
            placeholder="Enter your username"
            name="username"
            required
          />
          <div class="error-message" id="signup-email-error"></div>
          <input
            type="password"
            placeholder="Create a password"
            name="pwd"
            required
          />
          <div class="error-message" id="signup-password-error"></div>
          <input
            type="password"
            placeholder="Confirm your password"
            name="cpwd"
            required
          />
          <div class="error-message" id="signup-confirm-password-error"></div>
          <input
            type="submit"
            class="button"
            value="Signup"
          />
        </form>
        <div class="switch">
          <span>Already have an account?</span>
          <label for="check">Login</label>
        </div>
      </div>
    </div>
    <script src="./assets/js/script_login.js"></script>
  </body>
</html>

<%
  }  
%>
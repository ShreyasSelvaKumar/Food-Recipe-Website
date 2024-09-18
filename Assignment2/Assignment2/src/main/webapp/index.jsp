<%-- 
    Document   : Homepage
    Created on : Apr 16, 2024, 11:28:19 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
    </head>
    <body>
        <h1>Welcome to Food Recipe Website  </h1>
        <h1>Home Page</h1>
         <%@include file="homenavigation.jsp" %> <br> 
        <button onclick="window.location.href = 'user_register.jsp';">User Registration</button>
        <br> <br>
        <button onclick="window.location.href = 'user_login.jsp';">User Login</button>
        <br> <br>
        <button onclick="window.location.href = 'admin_register.jsp';">Admin Registration</button>
        <br> <br>
        <button onclick="window.location.href = 'admin_login.jsp';">Admin Login</button>
       
        <br> <br> <br>
       
    </body>
</html>

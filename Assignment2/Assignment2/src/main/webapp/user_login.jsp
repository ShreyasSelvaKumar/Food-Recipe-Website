<%-- 
    Document   : login
    Created on : Apr 16, 2024, 11:57:30 PM
    Author     : mm27s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Login</title>
</head>
<body>
    <h1>User Login</h1><br><br>
    <form action="UserLogin.jsp" method="post">
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
</body
</html>

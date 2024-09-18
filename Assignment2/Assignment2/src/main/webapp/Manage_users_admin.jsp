<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Manage_users_admin
    Created on : Apr 20, 2024, 3:57:20 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
</head>
<body>
    <h1>Manage Users</h1> <br>
    
     <%@include file="adminnavigation.jsp" %>  <br>
     <%@include file="adminauth.jsp" %>
    
    <h2>Modify User</h2>
    <form action="AdminUserModify.jsp" method="post">
        <label for="user_id">User ID:</label>
        <input type="text" id="user_id" name="user_id" required><br><br>
        
        <label for="new_username">New Username:</label>
        <input type="text" id="new_username" name="new_username"><br><br>
        
        <label for="new_email">New Email:</label>
        <input type="email" id="new_email" name="new_email"><br><br>
        
        <label for="new_password">New Password:</label>
        <input type="password" id="new_password" name="new_password"><br><br>
        
        <button type="submit">Modify User</button>
    </form>
    
    <h2>Delete User</h2>
    <form action="AdminUserDelete.jsp" method="post">
        <label for="user_id">User ID:</label>
        <input type="text" id="user_id" name="user_id" required><br><br>
        
        <button type="submit">Delete User</button>
    </form>
</body>
</html>

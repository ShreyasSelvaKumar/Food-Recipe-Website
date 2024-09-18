<%-- 
    Document   : Register.jsp
    Created on : Apr 16, 2024, 11:36:18 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Register</title>
    </head>
    <body>
       <h2>Admin Registration</h2>

            <form action="AdminRegistration.jsp" method="post">
              <label for="name">Name:</label><br>
              <input type="text" id="name" name="name" required><br>
              <label for="email">Email:</label><br>
              <input type="email" id="email" name="email" required><br>
              <label for="username">Username:</label><br>
              <input type="text" id="username" name="username" required><br>
              <label for="password">Password:</label><br>
              <input type="password" id="password" name="password" required><br><br>
              <input type="submit" value="Register">
            </form>
    </body>
</html>

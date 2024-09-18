<%-- 
    Document   : after_user_login
    Created on : Apr 17, 2024, 2:28:31 AM
    Author     : mm27s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Recipe Website - Author Profile</title>
    </head>
    <body>
        <h1>USER HOMEPAGE</h1>
        
        <%@include file="navigation.jsp" %>
   <br><br>
        <form action="createrecipe.jsp" method="post">
            <button type="submit">Create Recipe</button>
        </form> <br>
        <form action="modifyrecipe.jsp" method="post">
            <button type="submit">Update Recipe</button>
        </form><br>
       
 
    </body>
</html>
    </body>
</html>

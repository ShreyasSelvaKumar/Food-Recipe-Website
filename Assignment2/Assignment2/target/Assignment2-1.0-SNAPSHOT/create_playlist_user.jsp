<%-- 
    Document   : create_playlist_user
    Created on : Apr 17, 2024, 3:05:37 AM
    Author     : mm27s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create playlist</title>
    </head>
    <body>
        
        <h1>Create your playlist </h1> 
        <%@include file="navigation.jsp" %> <br>
        <%@include file="Authuser.jsp" %> 
           <form action="CreateUserPlaylist.jsp" method="post">
                <label for="playlist_name">Playlist Name:</label>
                <input type="text" id="playlist_name" name="playlist_name" required><br><br>

                <label for="song1">Song 1:</label>
                <input type="text" id="song1" name="song1" required><br><br>

                <label for="song2">Song 2:</label>
                <input type="text" id="song2" name="song2"><br><br>

                <label for="song3">Song 3:</label>
                <input type="text" id="song3" name="song3"><br><br>

                <button type="submit">Create Playlist</button>
           </form>

        
    </body>
</html>

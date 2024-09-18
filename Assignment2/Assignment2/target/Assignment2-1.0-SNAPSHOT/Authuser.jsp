<%-- 
    Document   : Authuser
    Created on : Jun 2, 2024, 11:03:41?PM
    Author     : SHreyas
--%>
<%--@page contentType="text/html" pageEncoding="UTF-8"%>
//<!DOCTYPE html>--%>

<%
    String email = (String)session.getAttribute("email");
    if(email == null){
    response.sendRedirect("index.html");
    return;
    }
%>
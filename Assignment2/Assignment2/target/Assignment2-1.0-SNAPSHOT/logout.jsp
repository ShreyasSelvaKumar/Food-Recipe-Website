<%-- 
    Document   : logout
    Created on : Jun 2, 2024, 9:51:31 PM
    Author     : Shreyas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>


<%
    if(session.getAttribute("user") != null){
     session.removeAttribute("user");
     response.sendRedirect("index.jsp");
     return;
    }
   
%>

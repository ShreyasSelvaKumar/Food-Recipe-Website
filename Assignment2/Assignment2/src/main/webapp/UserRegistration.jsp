<%-- 
    Document   : UserReistration
    Created on : Jun 16, 2024, 8:37:40 PM
    Author     : Shreyas
--%>

<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.codejava.assignment2.UserRegistrationPojo"%>



<%
    // Get form parameters
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Create a new user entity
    UserRegistrationPojo user = new UserRegistrationPojo(name, email, username, password);

    // Save the user to the database using Hibernate
    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;
    try {
        tx = hibSession.beginTransaction();
        hibSession.save(user);
        tx.commit();
    } catch (Exception e) {
        if (tx != null) tx.rollback();
        e.printStackTrace();
    } finally {
        hibSession.close();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Success</title>
</head>
<body>
    <h2>Registration Successful</h2>
    <p>Thank you for registering, <%= name %>!</p>
    <a href="registration_success.jsp">Go to Login</a>
</body>
</html>

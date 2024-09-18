<%-- 
    Document   : AdminRegistration
    Created on : Jun 17, 2024, 2:39:40 AM
    Author     : Shreyas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.codejava.assignment2.AdminRegistrationPojo"%>

<%
    // Get form parameters
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Create a new user entity
    AdminRegistrationPojo user = new AdminRegistrationPojo(name, email, username, password);

    // Save the user to the database using Hibernate
    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;

    try {
        tx = hibSession.beginTransaction();
        hibSession.save(user);
        tx.commit();
    } catch (Exception e) {
        if (tx != null) {
            tx.rollback();
        }
        e.printStackTrace();
    } finally {
        if (hibSession != null) {
            hibSession.close();
        }
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

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.codejava.assignment2.UserRegistrationPojo" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.Query" %>

<%
    // Retrieving form parameter
    String userIdStr = request.getParameter("user_id");
    Long userId = null;

    if (userIdStr != null && !userIdStr.isEmpty()) {
        try {
            userId = Long.parseLong(userIdStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            out.println("Invalid user ID format.<br>");
        }
    }

    if (userId != null) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = hibSession.beginTransaction();

        try {
            // Fetch the user by ID using a query
            Query query = hibSession.createQuery("FROM UserRegistrationPojo WHERE id = :userId");
            query.setParameter("userId", userId);
            UserRegistrationPojo user = (UserRegistrationPojo) query.uniqueResult();

            if (user != null) {
                hibSession.delete(user);
                tx.commit();
                out.println("User with ID " + userId + " was successfully deleted.<br>");
            } else {
                out.println("User with ID " + userId + " not found.<br>");
                tx.rollback();
            }
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage() + "<br>");
        } finally {
            hibSession.close();
        }
    } else {
        out.println("Invalid user ID.<br>");
    }
%>


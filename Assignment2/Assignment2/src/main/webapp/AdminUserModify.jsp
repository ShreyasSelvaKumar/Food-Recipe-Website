<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.codejava.assignment2.UserRegistrationPojo" %>
<%@ page import="com.mycompany.hibernateUtil.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.Query" %>

<%
    String userIdStr = request.getParameter("user_id");
    String newUsername = request.getParameter("new_username");
    String newEmail = request.getParameter("new_email");
    String newPassword = request.getParameter("new_password");
    Long userId = null;

    if (userIdStr != null && !userIdStr.isEmpty()) {
        try {
            userId = Long.parseLong(userIdStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            out.println("Invalid user ID format.");
        }
    }

    if (userId != null) {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = hibSession.beginTransaction();

        try {
            // Use a query to fetch the UserRegistrationPojo object
            Query query = hibSession.createQuery("FROM UserRegistrationPojo WHERE id = :userId");
            query.setParameter("userId", userId);
            UserRegistrationPojo user = (UserRegistrationPojo) query.uniqueResult();

            if (user != null) {
                boolean updated = false;
                if (newUsername != null && !newUsername.isEmpty()) {
                    user.setUsername(newUsername);
                    updated = true;
                }
                if (newEmail != null && !newEmail.isEmpty()) {
                    user.setEmail(newEmail);
                    updated = true;
                }
                if (newPassword != null && !newPassword.isEmpty()) {
                    user.setPassword(newPassword);
                    updated = true;
                }
                
                if (updated) {
                    hibSession.update(user);
                    tx.commit();
                    out.println("User details updated successfully.");
                } else {
                    out.println("No details provided for update.");
                    tx.rollback();
                }
            } else {
                out.println("User with ID " + userId + " not found.");
                tx.rollback();
            }
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } finally {
            hibSession.close();
        }
    } else {
        out.println("Invalid user ID.");
    }
%>



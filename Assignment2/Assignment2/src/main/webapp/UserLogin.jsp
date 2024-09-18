<%--
Document   : UserLogin
Created on : Jun 2, 2024, 3:32:59 PM
Author     : Shreyas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.codejava.assignment2.UserLoginPojo"%>
<%@page import="com.codejava.assignment2.UserRegistrationPojo"%>
<%@page import="com.mycompany.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        UserLoginPojo userLoginPojo = new UserLoginPojo(email, password);
        Session hibsession = null;
        Transaction tx = null;

        try {
            hibsession = HibernateUtil.getSessionFactory().openSession();
            tx = hibsession.beginTransaction();

            Query q = hibsession.createQuery("from UserRegistrationPojo usr order by usr.email desc");
            Collection<UserRegistrationPojo> allUsrs = q.list();

            boolean userFound = false;

            for (UserRegistrationPojo usr : allUsrs) {
                if (userLoginPojo.getEmail().equals(usr.getEmail()) && userLoginPojo.getPassword().equals(usr.getPassword())) {
                    session.setAttribute("user", email);
                    response.sendRedirect("after_user_login.jsp");
                    userFound = true;
                    break;
                }
            }

            if (!userFound) {
                out.println("Invalid email or password. Please try again.");
            }

            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            throw new ServletException(e);
        } finally {
            if (hibsession != null) {
                hibsession.close();
            }
        }
    } else {
        session.removeAttribute("user");
        response.sendRedirect("index.jsp");
    }
%>

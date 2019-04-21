<%-- 
    Document   : sair
    Created on : 19/04/2019, 23:09:40
    Author     : Andr0id
--%>

<%@page import="br.com.fatecpg.quiz.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    BD.removeUsuarioList();
    response.sendRedirect("home.jsp");
%>

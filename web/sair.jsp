<%-- 
    Document   : sair
    Created on : 19/04/2019, 23:09:40
    Author     : Andr0id
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session.invalidate();
    response.sendRedirect("home.jsp");
%>

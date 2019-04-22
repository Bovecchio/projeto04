<%-- 
    Document   : math-test
    Created on : 15/04/2019, 15:45:17
    Author     : finha, J.Vasconcelos
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String usuario = (String) session.getAttribute("nome");
    if (usuario == null) {
        response.sendRedirect("home.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "WEB-INF/jspf/menu.jspf"%>
        <title>HTML QUIZ: Teste</title>
    </head>
    <body class="body_color">
        <%@include file = "WEB-INF/jspf/cssquiz.jspf"%>
    <center>
        <h1>HTML QUIZ</h1>
        <h2>Teste de HTML</h2>
        <h3><%=usuario%></h3>
        <hr>
        <form action="resultado.jsp">
    </center>

    <div class="container">
        <div class="row">
            <div class="col-sm">
                <% for (Question q : Quiz.getQuiz()) {%>
                <h4><%= q.getQuestion()%> </h4>
                <%for (String alternative : q.getAlternatives()) {%>

                <label class="containera"><%= alternative%>
                    <input type="radio" name="<%=q.getQuestion()%>" value="<%=alternative%>">
                    <span class="checkmark"></span>
                </label>

                <%}%>
                <hr>
                <%}%>
            </div>
        </div>
    </div>
    <center>
        <input type="submit" class="btn btn-dark" name="Quiz" value="Enviar">

        <%@include file = "WEB-INF/jspf/footer.jspf"%>

    </center>
</body>
</html>

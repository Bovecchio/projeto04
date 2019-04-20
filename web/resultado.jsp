<%-- 
    Document   : index
    Created on : 15/04/2019, 15:42:32
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

    double grade = 0.0;
    int corrects = 0;
    if (request.getParameter("Quiz") != null) {
        for (Question q : Quiz.getQuiz()) {
            if (request.getParameter(q.getQuestion()) != null) {
                String userAnswer = request.getParameter(q.getQuestion());
                if (q.getAnswer().equals(userAnswer)) {
                    corrects++;
                }
            }
        }
        grade = (double) corrects / (double) Quiz.getQuiz().size();
    } else if (request.getParameter("sair") != null) {

        session.invalidate();
        response.sendRedirect("identificacao.jsp");

    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "WEB-INF/jspf/menu.jspf"%> 

        <title>HTML QUIZ: Resultado</title>
    </head>
    <body>
        <h1>HTML QUIZ</h1>
        <h2>Resultado Final</h2>
        <%if (request.getParameter("Quiz") == null) {%>
        <h3><a href="quiz.jsp"> Realizar QUIZ de HTML</a></h3>
        <%} else {%>
        <h2>Você acertou <u><%= (grade * 100)%> %</u> das questões</h2>
        <h3><a href="quiz.jsp">Realizar novo QUIZ de HTML</a></h3>                 
        <%}%>
        <a href="sair.jsp">Sair</a>

    </body>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <%@include file = "WEB-INF/jspf/footer.jspf"%>

</html>

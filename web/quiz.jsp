<%-- 
    Document   : math-test
    Created on : 15/04/2019, 15:45:17
    Author     : finha
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "WEB-INF/jspf/menu.jspf"%>
        
        
        <title>HTML QUIZ: Teste</title>
    </head>
    <body class="body_color">
        <center>
        <h1>HTML QUIZ</h1>
        <h2>Teste de HTML</h2>
        <form action="resultado.jsp">
        </center>
          
            <% for(Question q: Quiz.getQuiz()){%>
            <h6><%= q.getQuestion()%> ?</h6>
            <%for(String alternative: q.getAlternatives()){%>
            <input type="radio"
                   name="<%=q.getQuestion()%>"
                   value="<%=alternative%>"
                   /> <%= alternative%><br/>                               
            <%}%>
         <%}%>
         <center>
         <input type="submit" name="Quiz" value="Enviar">
         
          <%@include file = "WEB-INF/jspf/footer.jspf"%>
          
        
         </center>
   </body>
</html>

<%-- 
    Document   : index
    Created on : 15/04/2019, 15:42:32
    Author     : finha, J.Vasconcelos
--%>

<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.quiz.BD"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = (String) session.getAttribute("nome");
    if (usuario == null) {
        response.sendRedirect("home.jsp");
    }

    Usuario user = new Usuario();

    double grade = 0.0;
    double media = 0;
    int corrects = 0;
    int ct = 0;
    if (request.getParameter("Quiz") != null) {
        for (Question q : Quiz.getQuiz()) {
            if (request.getParameter(q.getQuestion()) != null) {
                String userAnswer = request.getParameter(q.getQuestion());
                if (q.getAnswer().equals(userAnswer)) {
                    corrects++;
                }
            }
        }
        Usuario u = new Usuario();

        if (u.getNota() == 0) {
            grade = ((double) corrects / (double) Quiz.getQuiz().size()) * 100;
            ct++;
        } else {
            ct++;
            grade = (u.getNota() + (((double) corrects / (double) Quiz.getQuiz().size()) * 100)) / ct;
        }

        user.setNome(usuario);
        user.setNota(corrects);
        BD.getUsuariosList().add(user);
        //response.sendRedirect("resultado.jsp");

    } else if (request.getParameter("sair") != null) {
        session.invalidate();
        response.sendRedirect("identificacao.jsp");
    }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file = "WEB-INF/jspf/menu.jspf"%> 
        <title>HTML QUIZ: Resultado</title>
    </head>
    <body>
        <div class="container">
        <h1>HTML QUIZ</h1>
        <h2>Resultado Final</h2>
        <h2>Você acertou <u><%= user.getNota()%> %</u> das questões</h2>
        <h2>Nota <u><%= corrects%></u></h2>
        <h3><a class="btn btn-dark" href="quiz.jsp">Realizar novo QUIZ de HTML</a></h3>                 
        <h3><a class="btn btn-outline-danger" href="sair.jsp">Sair</a></h3>
        <table class="table"  style="margin-bottom: 50px;">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">N°</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Media</th>

                </tr>
            </thead>
            <tbody> 
                <% int id = 0; %>
                <%Collections.reverse(BD.getUsuariosList());%>
                <%for (Usuario u : BD.getUsuariosList()) {%>
                <tr>
                    <% if (id > 8) {
                            break;
                        } %>
                    <%  id = BD.getUsuariosList().indexOf(u);%>
                    <th scope="row"> <%=id + 1%> </th>
                    <td><%= u.getNome()%></td>
                    <td><%= u.getNota()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <%Collections.reverse(BD.getUsuariosList());%>
            </div>
    </body>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <%@include file = "WEB-INF/jspf/footer.jspf"%>

</html>

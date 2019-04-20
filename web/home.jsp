<%-- 
    Document   : home
    Created on : 15/04/2019, 20:43:47
    Author     : finha, J.Vasconcelos
--%>


<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    String usuario = (String) session.getAttribute("nome");
    if (usuario != null) {
        response.sendRedirect("quiz.jsp");
    }


%>
<html>
    <head>
        <%@include file = "WEB-INF/jspf/menu.jspf"%>

        <title>HTML QUIZ: Home</title>
    </head>
    <body class="body_color">
        <br>
    <center>
        <h1>HTML QUIZ</h1>             

        <!-- Sistema de login -->
        <br><br>
        <h2 class="h3_body">ATENÇÃO!</h2> <br>
        <h3 class="h3_body">Para ser desafiado você precisa entrar com o seu nome de usuário.</h3> <br>
        <p class="p3_body">Se você já fez participou do desafio antes, basta colocar o mesmo nome de usuário e clicar em Enviar.</p>
        <p class="p3_body"> Se for sua primeira vez é só escolher um nome de usuário e clicar em Enviar!</p>
    </center>
    <br>
    <center>
        <table>
            <tr>
                <td>
                    <form action="home.jsp">
                        <div class="input-group mb-3">
                            <input type="text" name="nome" required/>
                            <div class="input-group-append">
                                <input type="submit" class="btn btn-dark btn-lg btn-block fonte_botao" name="enviar" value="Enviar"/>
                            </div>
                        </div>
                    </form>
                    <%                        String nome = request.getParameter("nome");
                        if (nome != null && !nome.isEmpty()) {
                            session.setAttribute("nome", nome);
                            response.sendRedirect("quiz.jsp");
                        }
                    %>

                </td>
            </tr>
        </table>
        <br><h3 class="h3_body">BOA SORTE!</h3> <br>

        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Media</th>
            </tr>

            <%for (Usuario c : BD.getUsuarios()) {%>
            <tr>
                <%int id = BD.getUsuarios().indexOf(c);%>

                <td><%= c.getNome()%></td>
                <td><%= c.getMedia()%></td>
            </tr>
            <%}%>
        </table>

    </center>
    <%@include file = "WEB-INF/jspf/footer.jspf"%>

</body>
</html>

<%-- 
    Document   : home
    Created on : 15/04/2019, 20:43:47
    Author     : finha, J.Vasconcelos
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    String usuario = (String) session.getAttribute("nome");
    double media = 0;
    DecimalFormat df = new DecimalFormat("##.#");
%>
<html>
    <head>
        <%@include file = "WEB-INF/jspf/menu.jspf"%>

        <title>HTML QUIZ: Home</title>
    </head>
    <%@include file = "WEB-INF/jspf/csshome.jspf"%>
    <body class="body_color">
        <br>
    <center>
        <h1>HTML QUIZ</h1>             

        <!-- Sistema de login -->
        <br>
        <%if (usuario == null) {%>
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
                    <%
                        String nome = request.getParameter("nome");
                        if (nome != null && !nome.isEmpty()) {
                            session.setAttribute("nome", nome);
                            response.sendRedirect("home.jsp");
                        }
                    %>
                </td>
            </tr>
        </table>
        <br><h3 class="h3_body">BOA SORTE!</h3> <br>
        <%} else {%>
        <h3>Bem vindo, <%=usuario%></h3>
        <a class="btn btn-dark" href="quiz.jsp">Realizar Teste</a>
        <br><br>
        <a class="btn btn-outline-danger" href="sair.jsp">Sair</a>
        <%}%>
        <hr>

        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <h2>Testes Recentes</h2>
                    <table id="tabela">
                        <tr>
                            <th>Nome</th>
                            <th>Nota</th>
                        </tr>
                        <%int id = 0;  %>
                        <%Collections.reverse(BD.getUsuariosList());%>
                        <%for (Usuario u : BD.getUsuariosList()) {%>
                        <tr>
                            <% if (id > 8) {
                                    break;
                                } %>
                            <%  id = BD.getUsuariosList().indexOf(u);%>
                            <td><%= u.getNome()%></td>
                            <td><%= df.format(u.getNota())%></td>
                        </tr>
                        <%}%>
                    </table>

                    <%Collections.reverse(BD.getUsuariosList());%>
                </div>
                <div class="col-sm">
                    <h2>Melhores Notas</h2>

                    <table id="tabela">
                        <tr>
                            <th>N°</th>
                            <th>Nome</th>
                            <th>Nota</th>
                        </tr>
                        <%id = 0;  %>
                        <%for (Usuario u : BD.ordenaUsuariosList()) {%>
                        <tr>
                            <% if (id > 8) {
                                    break;
                                } %>
                            <%  id = BD.ordenaUsuariosList().indexOf(u);%>
                            <td><%=id + 1%></td>
                            <td><%= u.getNome()%></td>
                            <td><%= df.format(u.getNota())%></td>
                        </tr>
                        <%}%>
                    </table>

                </div>
                <%if (usuario != null) {%>
                <%Collections.reverse(BD.getUsuarioList());%>

                <%for (Usuario u : BD.acumulaMedia()) {
                        media = u.getMedia();
                    }%>
                <div class="col-sm">
                    <h2><%=usuario%> : Recentes</h2>
                    <table id="tabela">
                        <tr>
                            <th>Nome</th>
                            <th>Nota</th>
                        </tr>
                        <%id = 0;  %>
                        <%for (Usuario u : BD.getUsuarioList()) {%>
                        <tr>
                            <% if (id > 8) {
                                    break;
                                } %>
                            <%  id = BD.getUsuarioList().indexOf(u);%>

                            <td><%= u.getNome()%></td>
                            <td><%= df.format(u.getNota())%></td>
                        </tr>
                        <%}%>
                    </table>
                    <%Collections.reverse(BD.getUsuarioList());%>
                    <br>
                    <%if (media == 0) {%>
                    <h4>Sua Media : --</h4>
                    <%} else {%>
                    <h4>Sua Media : <%=df.format(media)%></h4>
                    <%}%>
                </div>
                <%}%>
            </div>

        </div>

    </center>

</body>
<%@include file = "WEB-INF/jspf/footer.jspf"%>
</html>

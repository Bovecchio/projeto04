<%-- 
    Document   : home
    Created on : 15/04/2019, 20:43:47
    Author     : finha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <%@include file = "WEB-INF/jspf/menu.jspf"%>
       
        <title>HTML QUIZ: Home</title>
    </head>
    <body class="body_color">
         <br>
        <center>
            <h1 class="h1_body"> <a href="home.jsp" class="a_navbar a_link_navbar">HTML QUIZ</a></h1>             
       
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
                        <form method="post" action="quiz.jsp">
                            <div class="input-group mb-3">
                            <input class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" type="text" name="usuario" value="" required/>
                            <div class="input-group-append">
                                <input type="submit" class="btn btn-dark btn-lg btn-block fonte_botao" name="enviar" value="Enviar"/>
                            </div>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
            <br><h3 class="h3_body">BOA SORTE!</h3> <br>
        </center>
        <%@include file = "WEB-INF/jspf/footer.jspf"%>
       
    </body>
</html>

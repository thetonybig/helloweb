<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="UTF-8"%>
<%@page import="beans.Estudante"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String m = "Tony";
            double a= 45;
            double soma = a+100;
            String nome= request.getParameter("nome");
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
    if(login!=null)        
    if (login.equals("admin") && senha.equals("admin")) { %>
            <i style="color:green">Você logou</i>  
        <% } else { %>
            <i style="color:red">Você não tem acesso</i>  
        <% }
        %>
        <h1>Hello World! <%= m %></h1>
        <form action="" method="post">
            <label>Login:</label>
            <input type="text" name="login" />
            <br>
             <label>Senha</label>
            <input type="password" name="senha" />
            <button type="submit">LOGAR</button>
        </form>
        <%
            Estudante cadu = new Estudante(100,"Carlos Eduardo","67999888","cadux@gmail.com");
        %>
        <ul>
            <li><%= cadu.getNome() %></li>
        </ul>
    </body>
</html>

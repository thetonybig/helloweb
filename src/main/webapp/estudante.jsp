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
            Estudante m1 = new Estudante();
            m1.setNome("Marcela");
            m1.setId(101);
        %>
        <ul>
            <li><%= cadu.getNome() %></li>
             <li><%= m1 %></li>
        </ul>
             <jsp:useBean class="beans.Estudante" id="a1">
                    <jsp:setProperty name="a1" property="nome" value="Amanda"/>
                     <jsp:setProperty name="a1" property="email" value="Amanda@gmail.com"/>
             </jsp:useBean>    
        
             <h1><jsp:getProperty name="a1" property="nome"/><br>
             </h1>
             <jsp:getProperty name="a1" property="email"/>
        
             
    </body>
</html>

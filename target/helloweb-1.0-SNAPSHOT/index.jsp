<%-- 
    Document   : index
    Created on : 24 de set. de 2024, 20:57:15
    Author     : Estudante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        %>
        <h1>Hello World! <%= m %></h1>
        <h1>Você também  <%= nome %></h1>
        <p><%= soma%></p>
    </body>
</html>

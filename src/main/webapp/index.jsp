<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="UTF-8"%>

<%@page import="beans.Disciplina"%> 
<jsp:useBean class="beans.Disciplina" id="d1" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADICIONAR DISCIPLINA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <div class="container mt-5">
        
        <h1>Nova Disciplina</h1>
        
        <form action="" method="post">
            <div class="mb-3">
                <label for="nome" class="form-label">Nome:</label>
                  <jsp:setProperty name="d1" property="nome"/>     
                <input type="text" class="form-control" name="nome" />
                  
            </div>
            <div class="mb-3">
                <label for="sigla" class="form-label">Sigla:</label>
                 <jsp:setProperty  name="d1" property="sigla"/>  
                <input type="text" class="form-control"  name="sigla" />
            </div>
            <div class="mb-3">
                <label for="carga" class="form-label">Carga Horária:</label>
                <jsp:setProperty name="d1" property="cargaHoraria"/>
                <input type="number" class="form-control"  name="carga" />
            </div>
            <div class="mb-3">
                <label for="semestre" class="form-label">Semestre:</label>
                <jsp:setProperty name="d1" property="semestre"/>
                <select class="form-select"  name="semestre">
                    <option value="1">1 semestre</option>
                    <option value="2">2 semestre</option>
                    <option value="3">3 semestre</option>
                    <option value="4">4 semestre</option>
                    <option value="5">5 semestre</option>
                    <option value="6">6 semestre</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Salvar</button>
        </form>
        Disciplina: <jsp:getProperty property="nome" name="d1"/><br>         
        Sigla: <jsp:getProperty property="sigla" name="d1"/>         
    
    </body>
</html>

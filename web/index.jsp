<%-- 
    Document   : index
    Created on : 27 de jan. de 2022, 14:41:34
    Author     : Henrique
--%>

<%@page import="model.UsuarioJpaController"%>
<%@page import="model.Usuario"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .table {
            margin-top: 5rem;
            width: 15% !important; 
        }
        table td {
            border: 0px solid black;
            border-collapse: collapse;
        }
        table th {
            text-align: center; 
            font-size: 30px;
        }
    </style>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo JPA</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>    
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    <center>
        <h1>Exemplo de uso do JPA - EclipseLink</h1>
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th style="color: crimson">Lista de Usuários</th>
                </tr>
            </thead>
            <tbody>
                <%
                    EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPATestPU");
                    UsuarioJpaController ujc = new UsuarioJpaController(emf);
                    List<Usuario> u = ujc.findUsuarioEntities();
                    for (Usuario i : u) {
                        out.println("<tr><td>");
                        out.println(i.getUsuario());
                        out.println("</td></tr>");
                    }
                        emf.close();
                %>
            </tbody>
        </table>
    </center>
</body>
</html>

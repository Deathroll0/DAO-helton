<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.List"%>
<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar todos los clientes</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <center><h1>Menu Cliente</h1></center>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <blockquote>
                    Todos los clientes
                    </blockquote>
                </div>
                
                <div class="col-sm-6">
                    <center>
                <table class="table table-bordered table-responsive table-hover">
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Edad</th>
    <c:forEach var="c" items="${sessionScope.myListC}">
            <tr><td>${c.rut}</td>
            <td>${c.nombre}</td>
            <td>${c.edad}</td></tr>
    </c:forEach>
        </table>
                        </center>
                </div>
                    
        </div>
        </div>
    </body>
</html>

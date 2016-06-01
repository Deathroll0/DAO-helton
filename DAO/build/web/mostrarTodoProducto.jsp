<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.List"%>
<%@page import="dto.productoDTO"%>
<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar todos los productos</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <center><h1>Menu Producto</h1></center>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <blockquote>
                    Todos los Productos
                    </blockquote>
                </div>
                
                <div class="col-sm-6">
                    
        <table class="table table-bordered table-responsive table-hover">
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Stock</th>
                    <th>Precio</th>
       <c:forEach var="p" items="${sessionScope.myListP}">
            <tr><td>${p.Cod_Producto}</td>
            <td>${p.Nombre}</td>
            <td>${p.Stock}</td>
            <td>${p.Precio}</td></tr>      
        </c:forEach>
                    
        </table>
                      
                </div>
                    
        </div>
        </div>

    </body>
</html>

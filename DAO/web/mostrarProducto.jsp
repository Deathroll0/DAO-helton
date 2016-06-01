
<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mostrar producto</title>
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
                        Producto Encontrado
                    </blockquote>
                </div>
            
        
         <%
            productoDTO p= (productoDTO) request.getSession().getAttribute("myBuscarP");
        %>
        <div class="col-sm-5">
        <table class="table table-bordered table-responsive table-hover">
            <tr>
                <td>Codigo:</td>
                <td><%out.print(p.getCod_Producto());%></td>
            </tr>
            <tr>
                <td>Nombre:</td>
                <td><%out.print(p.getNombre());%></td>
            </tr>
            <tr>
                <td>Stock:</td>
                <td><%out.print(p.getStock());%></td>
            </tr>        
            <tr>
                <td>Precio:</td>
                <td><%out.print(p.getPrecio());%></td>
            </tr>        

       </table>
                   <br> <a href="index.jsp"> Volver</a>
         </div>
            </div>
        </div>
    </body>
</html>

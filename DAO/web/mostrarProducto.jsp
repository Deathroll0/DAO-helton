
<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mostrar producto</title>
    </head>
    <body>
        <%
            productoDTO p= (productoDTO) request.getSession().getAttribute("myBuscarP");
        %>
        Codigo:<%out.print(p.getCod_Producto());%><br>
        Nombre:<%out.print(p.getNombre());%><br>
        Stock:<%out.print(p.getStock());%><br>
        Precio:<%out.print(p.getPrecio());%><br>
       <br> <a href="index.jsp"> Volver</a>
    </body>
</html>

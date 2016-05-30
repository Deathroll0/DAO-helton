
<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            compraDTO co= (compraDTO) request.getSession().getAttribute("myBuscarCo");
        %>
        ID:<%out.print(co.getId());%><br>
        Fecha:<%out.print(co.getFecha());%><br>
        Cantidad:<%out.print(co.getCantidad());%><br>
        Precio:<%out.print(co.getPrecio());%><br>
        Rut:<%out.print(co.getRut());%><br>
        Codigo:<%out.print(co.getCod_prod());%><br>
       <br> <a href="index.jsp"> Volver</a>
    </body>
</html>

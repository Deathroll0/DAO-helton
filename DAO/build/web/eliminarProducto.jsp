<%-- 
    Document   : eliminarProducto
    Created on : 28-05-2016, 20:43:39
    Author     : MClovin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar producto</title>
    </head>
    <body>
        <h1>Ingrese los datos</h1>
        <form action="eliminarProducto.do" method="post">
            Codigo: <input type="text" name="txtCodigo"><br>
            <input type="submit" values="Eliminar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

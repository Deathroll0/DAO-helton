<%-- 
    Document   : crearProducto
    Created on : 28-05-2016, 20:43:28
    Author     : MClovin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Producto</title>
    </head>
    <body>
        <h1>Ingrese los datos del cliente</h1>
        <form action="crearCliente.do" method="post">
            Codigo     :<input type="text" name="txtCodigo"/><br>
            Nombre  :<input type="text" name="txtNombre"/><br>
            stock    :<input type="text" name="txtStock"/><br>
            <input type="submit" value="Crear"/><br>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>

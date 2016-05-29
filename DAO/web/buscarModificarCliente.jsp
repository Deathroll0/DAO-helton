<%-- 
    Document   : buscarModificarCliente
    Created on : 28-05-2016, 23:11:54
    Author     : MClovin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        Ingrese el rut del usuario que desea modificar
        <form action="buscarModificarCliente.do" method="post">
            <br><input type="text" name="txtRut">
            <br><input type="submit" value="Buscar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

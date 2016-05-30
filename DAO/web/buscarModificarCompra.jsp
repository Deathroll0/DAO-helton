<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>modificar</title>
    </head>
    <body>
        Ingrese la id de la compra que desea modificar
        <form action="buscarModificarCompra.do" method="post">
            <br><input type="text" name="txtId">
            <br><input type="submit" value="Buscar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

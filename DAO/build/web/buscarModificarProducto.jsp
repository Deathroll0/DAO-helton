
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
         Ingrese el codigo del producto que desea modificar
        <form action="buscarModificarProducto.do" method="post">
            <br><input type="text" name="txtCodigo">
            <br><input type="submit" value="Buscar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

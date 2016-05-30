
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eliminar compra</title>
    </head>
    <body>
       <h1>Ingrese los datos para eliminar</h1>
        <form action="eliminarCompra.do" method="post">
            ID: <input type="text" name="txtId"><br>
            <input type="submit" value="Eliminar"><br>
            <a href="index.jsp"> Volver</a>       
        </form>
    </body>
</html>

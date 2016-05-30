
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <h1>Ingrese los datos para eliminar</h1>
        <form action="eliminarCliente.do" method="post">
            Rut: <input type="text" name="txtRut"><br>
            <input type="submit" value="Eliminar"><br>
            <a href="index.jsp"> Volver</a>       
        </form>
    </body>
</html>

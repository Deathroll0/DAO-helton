
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cliente</title>
    </head>
    <body>
        <h1>Ingrese los datos del cliente</h1>
        <form action="crearCliente.do" method="post">
            Rut     :<input type="text" name="txtRut"/><br>
            Nombre  :<input type="text" name="txtNombre"/><br>
            Edad    :<input type="text" name="txtEdad"/><br>
            <input type="submit" value="Crear"/><br>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>

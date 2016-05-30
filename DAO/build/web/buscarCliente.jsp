<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
    </head>
    <body>
        <form action="buscarCliente.do" method="post" >
            Ingrese rut a buscar<br>
            Rut:<input type="text" name="txtRut"><br>
            <input type="submit" value="Buscar"><br>
            <a href="index.jsp"> Volver</a>
            
        </form>
    </body>
</html>

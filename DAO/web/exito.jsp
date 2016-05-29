<%-- 
    Document   : exito
    Created on : 28-05-2016, 20:42:27
    Author     : MClovin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXITO!</title>
    </head>
    <body>
        <h1>Se ha efectuado una operacion exitosa</h1>
        <%String exito=(String) request.getSession().getAttribute("myExito");%>
        Se ha efectuado con exito: <%out.println(exito);%>
    </body>
</html>

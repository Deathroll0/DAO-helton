

<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <h1>Modifique los datos</h1>
        <form action="modificarCliente.do" method="post">  
            <%
                clienteDTO c=(clienteDTO) request.getSession().getAttribute("myModificarC");
            %>
            Rut: <input type="text" name="txtRut" value="<%out.print(c.getRut());%>" readonly="readonly"> <br>
            Nombre:<input type="text" name="txtNombre" value="<%out.print(c.getNombre());%>"><br>
            Edad:<input type="text" name="txtEdad" value="<%out.print(c.getEdad());%>"><br>       
            <input type="submit" values="Modificar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

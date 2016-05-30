
<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <form action="modificarProducto.do" method="post">  
            <%
                productoDTO p=(productoDTO) request.getSession().getAttribute("myModificarP");
            %>
            Codigo: <input type="text" name="txtCodigo" value="<%out.print(p.getCod_Producto());%>" readonly="readonly"> <br>
            Nombre:<input type="text" name="txtNombre" value="<%out.print(p.getNombre());%>"><br>
            Stock:<input type="text" name="txtStock" value="<%out.print(p.getStock());%>"><br>
            Precio:<input type="text" name="txtPrecio" value="<%out.print(p.getPrecio());%>"><br>
            <input type="submit" values="Modificar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>modificar compra</title>
    </head>
    <body>
        <h1>Modifique los datos</h1>
        <form action="modificarCompra.do" method="post">  
            <%
                compraDTO co=(compraDTO) request.getSession().getAttribute("myModificarCo");
            %>
            ID: <input type="text" name="txtId" value="<%out.print(co.getId());%>" readonly="readonly"> <br>
            Fecha:<input type="text" name="txtFecha" value="<%out.print(co.getFecha());%>"><br>
            Cantidad:<input type="text" name="txtCantidad" value="<%out.print(co.getCantidad());%>"><br>       
            Precio:<input type="text" name="txtPrecio" value="<%out.print(co.getPrecio());%>"><br>       
            Rut:<input type="text" name="txtRut" value="<%out.print(co.getRut());%>"><br>       
            Codigo:<input type="text" name="txtCodigo" value="<%out.print(co.getCod_prod());%>"><br>       
            <input type="submit" values="Modificar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>
</html>

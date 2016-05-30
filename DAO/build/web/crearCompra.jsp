
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>crear compra</title>
    </head>
    <body>
        <h1>Ingrese los datos de la compra</h1>
        <form action="crearCompra.do" method="post">
            ID              :<input type="text" name="txtId"/><br>
            Fecha           :<input type="text" name="txtFecha"/><br>
            Cantidad        :<input type="text" name="txtCantidad"/><br>
            Precio          :<input type="text" name="txtPrecio"/><br>
            RUT Cliente     :<input type="text" name="txtRut"/><br>
            Codigo Producto :<input type="text" name="txtCodigo"/><br>
            <input type="submit" value="Crear"/><br>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>

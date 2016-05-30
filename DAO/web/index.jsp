
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Venta</title>
    </head>
    <body>
        <h1>Ingrese a que seccion desea ingresar</h1>
        <table border="1">
            <tr>
                <th>Clientes</a></th>
                <th>Productos</a></th>           
                <th>Compra</a></th>           
            </tr>
            <tr>
                <td><a href="crearCliente.jsp"> Crear Cliente</a></td>
                <td><a href="crearProducto.jsp"> Crear Producto </a></td>           
                <td><a href="crearCompra.jsp"> Crear Compra</a></td>           
            </tr>   
            <tr>
                <td><a href="eliminarCliente.jsp"> Eliminar Cliente</a></td>
                <td><a href="eliminarProducto.jsp"> Eliminar Producto </a></td>           
                <td><a href="eliminarCompra.jsp"> Eliminar Compra</a></td>           
            </tr>
            <tr>
                <td><a href="buscarModificarCliente.jsp"> Modificar Cliente</a></td>
                <td><a href="buscarModificarProducto.jsp"> Modificar Producto </a></td>           
                <td><a href="buscarModificarCompra.jsp"> Modificar Compra</a></td>           
            </tr>
            <tr>
                <td><a href="buscarCliente.jsp"> Buscar Cliente</a></td>
                <td><a href="buscarProducto.jsp"> Buscar Producto </a></td>           
                <td><a href="buscarCompra.jsp"> Buscar Compra</a></td>           
            </tr>
            <tr>
                <td><a href="mostrarTodoCliente.do"> Mostrar Todos Los Cliente</a></td>
                <td><a href="mostrarTodoProducto.do"> Mostrar Todos Los Producto </a></td>           
                <td><a href="mostrarTodoCompra.do"> Mostrar Todas Las Compras</a></td>           
            </tr>
            
            
        </table>
    </body>
</html>

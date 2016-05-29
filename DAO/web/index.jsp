<%-- 
    Document   : index
    Created on : 28-may-2016, 10:35:29
    Author     : Juan B. Yanez
--%>

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
            </tr>
            <tr>
                <td><a href="crearCliente.jsp"> Crear Cliente</a></td>
                <td><a href="crearProducto.jsp"> Crear Producto </a></td>           
            </tr>   
            <tr>
                <td><a href="eliminarCliente.jsp"> Eliminar Cliente</a></td>
                <td><a href="eliminarProducto.jsp"> Eliminar Producto </a></td>           
            </tr>
            <tr>
                <td><a href="modificarCliente.jsp"> Modificar Cliente</a></td>
                <td><a href="modificarProducto.jsp"> Modificar Producto </a></td>           
            </tr>
            <tr>
                <td><a href="buscarCliente.jsp"> Buscar Cliente</a></td>
                <td><a href="buscarProducto.jsp"> Buscar Producto </a></td>           
            </tr>
            <tr>
                <td><a href="mostrarTodoCliente.jsp"> Mostrar Todos Los Cliente</a></td>
                <td><a href="mostrarTodoProducto.jsp"> Mostrar Todos Los Producto </a></td>           
            </tr>
            
            
        </table>
    </body>
</html>

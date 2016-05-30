<%-- 
    Document   : crearCompra2
    Created on : 30-may-2016, 10:25:53
    Author     : Juan B. Yanez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras 1</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <body>
        <div class="container">
            <div class="page-header">
                <center> <h1>Ingresar una Compra</h1> </center>
            </div>
            
<!--Página central-->
<div class="row">
<!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Para comprar primero Identificate... 
        </blockquote>
        
        <div class="col-sm-6">
            <form action="crearCompra.do" method="post">
            RUT Cliente     :<input type="text" name="txtRut"/><br>
            <input type="submit" value="Crear"/><br>
        </form>
        </div>
    </div>
<!--    Division Menu-->
<div class="col-sm-3 col-sm-offset-1">
    <div class="well">
        <h4>COMPRAS</h4>
        <a href="crearCompra.jsp"> Crear</a><br />
        <a href="eliminarCompra.jsp"> Eliminar</a><br />
        <a href="buscarModificarCompra.jsp"> Modificar</a><br />
        <a href="buscarCompra.jsp"> Buscar</a><br />
        <a href="mostrarTodoCompra.do"> Mostrar Todo</a><br />
    </div>
    <div class="well ">
        <h4>CLIENTES</h4>
        <a href="crearCliente.jsp"> Crear</a><br />
        <a href="eliminarCliente.jsp"> Eliminar</a><br />
        <a href="buscarModificarCliente.jsp"> Modificar</a><br />
        <a href="buscarCliente.jsp"> Buscar</a><br />
        <a href="mostrarTodoCliente.do"> Mostrar Todo</a><br />
    </div>
    <div class="well">
        <h4>PRODUCTOS</h4>
        <a href="crearProducto.jsp"> Crear</a><br />
        <a href="eliminarProducto.jsp"> Eliminar</a><br />
        <a href="buscarModificarProducto.jsp"> Modificar</a><br />
        <a href="buscarProducto.jsp"> Buscar</a><br />
        <a href="mostrarTodoProducto.do"> Mostrar Todo</a><br />
    </div>
</div>
    
</div>
        
        </div>
    <center>
        <footer>
            Creado por : Ricardo Palma - Juan B. Yáñez
        </footer>
    </center>
    </body>
</html>

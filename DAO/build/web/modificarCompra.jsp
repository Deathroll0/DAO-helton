<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Compra</title>
    <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <%
        compraDTO co=(compraDTO) request.getSession().getAttribute("myModificarCo");
    %>
    
    
    <body>
        <div class="container">
            <div class="page-header">
                <center> <h1>Menú Principal</h1> </center>
            </div>
            
<!--Página central-->
<div class="row">
<!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Bienvenido al Sistemas de ventas! <br />
            
        </blockquote>
        Para comenzar utiliza las herramientas del menú
    </div>
<!--    Division Menu-->
<div class="col-sm-3 col-sm-offset-1">
    <div class="well">
        <h4>COMPRAS <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></h4>
        <a href="compraPaso1.do"> Crear</a><br />
        <a href="eliminarCompra.jsp"> Eliminar</a><br />
        <a href="buscarModificarCompra.jsp"> Modificar</a><br />
        <a href="buscarCompra.jsp"> Buscar</a><br />
        <a href="mostrarTodoCompra.do"> Mostrar Todo</a><br />
    </div>
    <div class="well ">
        <h4>CLIENTES <span class="glyphicon glyphicon-user" aria-hidden="true"></span></h4>
        <a href="crearCliente.jsp"> Crear</a><br />
        <a href="eliminarCliente.jsp"> Eliminar</a><br />
        <a href="buscarModificarCliente.jsp"> Modificar</a><br />
        <a href="buscarCliente.jsp"> Buscar</a><br />
        <a href="mostrarTodoCliente.do"> Mostrar Todo</a><br />
    </div>
    <div class="well">
        <h4>PRODUCTOS <span class="glyphicon glyphicon-barcode" aria-hidden="true"></span></h4>
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
    
    
    
<!--    <body>
        <h1>Modifique los datos</h1>
        <form action="modificarCompra.do" method="post">  
            
            ID: <input type="text" name="txtId" value="<%out.print(co.getId());%>" readonly="readonly"> <br>
            Fecha:<input type="text" name="txtFecha" value="<%out.print(co.getFecha());%>"><br>
            Cantidad:<input type="text" name="txtCantidad" value="<%out.print(co.getCantidad());%>"><br>       
            Precio:<input type="text" name="txtPrecio" value="<%out.print(co.getPrecio());%>"><br>       
            Rut:<input type="text" name="txtRut" value="<%out.print(co.getRut());%>"><br>       
            Codigo:<input type="text" name="txtCodigo" value="<%out.print(co.getCod_prod());%>"><br>       
            <input type="submit" values="Modificar"><br>
            <a href="index.jsp"> Volver</a>
        </form>
    </body>-->
</html>

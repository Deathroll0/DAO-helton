<%-- 
    Document   : compraPaso2
    Created on : 30-may-2016, 20:57:42
    Author     : Juan B. Yanez
--%>

<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra Paso 2</title>
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
            Compras : PASO 2 <br />
            Confirma tu compra ingresando tu rut y luego presiona "Comprar"
        </blockquote>
        
        <div class="col-sm-10">
            <form action="compraPaso3.do" method="POST">
                
                <%
                    compraDTO compra = (compraDTO) request.getSession().getAttribute("compra");
                    
                    String nomProd = (String) request.getSession().getAttribute("nomProd");
                %>
                
                <input type="text" name="txtRut" placeholder="Ingresa rut Cliente" />
                <input type="submit" value="Comprar" class="btn btn-success" />
                <br /><br />
                <table class="table table-responsive table-bordered table-hover">
                    
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio Total</th>
                            <th>Fecha</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><% out.print(nomProd); %></td>
                            <td><% out.print(compra.getCantidad()); %></td>
                            <td><% out.print(compra.getPrecio()); %></td>
                            <td><% out.print(compra.getFecha()); %></td>
                            
                        </tr>
                    </tbody>
                </table>
                            
                            
                            
            </form>
        </div>
        
        
        
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
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cliente</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <center><h1>Crear Cliente</h1></center>     
           </div>
                <div class="row">
                    <!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Ingrese los datos del cliente. <br />
            
        </blockquote>
        
        <div class="col-sm-6">
            <form action="crearCliente.do" method="post">
            <table class="table table-bordered table-striped table-responsive">
                <tr>
                    <td><b>Rut :</b></td>
                    <td><input type="text" name="txtRut" placeholder="Ingrese rut del cliente" size="32px" /></td>
                </tr>
                <tr>
                    <td><b>Nombre :</b></td>
                    <td><input type="text" name="txtNombre" placeholder="Ingrese nombre del cliente" size="32px" /></td>
                </tr>
                <tr>
                    <td><b>Edad :</b></td>
                    <td><input type="text" name="txtEdad" placeholder="Ingrese edad del cliente" size="32px" /></td>
                </tr>
            </table>   
            <input type="submit" value="Crear" class="btn btn-success"/><br><br><br>
        
        
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

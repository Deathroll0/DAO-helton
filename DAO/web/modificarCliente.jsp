

<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Cliente</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <%
        clienteDTO c=(clienteDTO) request.getSession().getAttribute("myModificarC");
    %>
    
    
    <body>
        <div class="container">
            <div class="page-header">
                <center> <h1>Modificar Compra</h1> </center>
            </div>
            
<!--Página central-->
<div class="row">
<!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Ahora puedes modificar solo los datos que te damos a continuación..
        </blockquote>
        
        <div class="col-sm-6">
            <form action="modificarCliente.do" method="post">  
            <table class="table table-responsive table-bordered table-striped">
                <thead>
                    <tr>
                        <th><center>Rut</center></th>
                        <th><center>Nombre</center></th>
                        <th><center>Edad</center></th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><center> <input type="text" name="txtRut" value="<%=c.getRut()%>" readonly="readonly" /> </center></td>
                        <td><center> <input type="text" name="txtNombre" value="<%=c.getNombre()%>" /> </center></td>
                        <td><center> <input type="text" name="txtEdad" value="<%=c.getEdad()%>" size="5px" /> </center></td>
                        
    
                    </tr>
                </tbody>
                
            </table>
                    <input type="submit" value="Modificar" class="btn btn-warning" />
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

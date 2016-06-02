
<%@page import="java.util.List"%>
<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <%
        List<compraDTO> compras =  (List<compraDTO>)request.getSession().getAttribute("myListCo");
    %>
    
    <body>
        <div class="container">
            <div class="page-header">
                <center> <h1>Buscar Compra</h1> </center>
            </div>
            
<!--Página central-->
<div class="row">
<!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Mostrando los datos de la compra:
        </blockquote>
        
        <div class="col-sm-10">
            <form action="buscarCompra.do" method="post">
                <table class="table table-responsive table-bordered table-striped">
                <thead>
                    <tr>
                        <th><center>Id</center></th>
                        <th><center>Fecha</center></th>
                        <th><center>Cantidad</center></th>
                        <th><center>Precio</center></th>
                        <th><center>Rut</center></th>
                        <th><center>Codigo Producto</center></th>
                    </tr>
                </thead>
                <tbody>

                        <%
                            for(int i=0; i<compras.size(); i++)
                            {
                                out.println("<tr>");
                                    out.println("<td><center>" + compras.get(i).getId() + "</center></td>");
                                    out.println("<td><center>" + compras.get(i).getFecha()+ "</center></td>");
                                    out.println("<td><center>" + compras.get(i).getCantidad()+ "</center></td>");
                                    out.println("<td><center>" + compras.get(i).getPrecio()+ "</center></td>");
                                    out.println("<td><center>" + compras.get(i).getRut()+ "</center></td>");
                                    out.println("<td><center>" + compras.get(i).getCod_prod()+ "</center></td>");
                                out.println("</tr>");
                            }
                        %>
                    
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

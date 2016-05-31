<%-- 
    Document   : compraPaso1
    Created on : 30-may-2016, 14:51:18
    Author     : Juan B. Yanez
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.productoDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra Paso 1</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <%
        List<productoDTO> listaProductos = (List<productoDTO>) request.getSession().getAttribute("listaProductos");
    %>
    
    
    <body>
        <div class="container">
            <div class="page-header">
                <center> <h1>Ingresar Compra</h1> </center>
            </div>
            
<!--Página central-->
<div class="row">
<!--    Division principal-->
    <div class="col-sm-8">
        <blockquote>
            Selecciona tu compra, agrega una cantidad de productos y presiona "Siguiente".
        </blockquote>
        
        <div class="col-sm-10">
            <form action="compraPaso2.do" method="post">
                
                <!-- Lista de Productos -->
                <table class="table table-responsive table-bordered table-hover">
                    <thead>
                        <tr>
                            <!--<td>Codigo</td>-->
                            <th>Nombre</th>
                            <th><center>Stock</center></th>
                            <th><center>Precio</center></th>
                            <th><center>Comprar</center></th>
                            <th><center>Cantidad</center></th>

                        </tr>
                    </thead>
                <tbody>
                    <%
        
                        ArrayList<productoDTO> listaProdFiltro = new ArrayList<productoDTO>();
        
                        for(int i=0; i<listaProductos.size(); i++)
                        {
                            //Test
                            if(listaProductos.get(i).getStock() > 0){
                                listaProdFiltro.add(listaProductos.get(i));
                            }
                            //Fin
                            
//                            if(listaProductos.get(i).getStock() > 0)
//                            {
//                                out.println("<tr>");
//                                out.println("<td>" + listaProductos.get(i).getNombre()+ "</td>");
//                                out.println("<td><center>" + listaProductos.get(i).getStock()+ "</center></td> ");
//                                out.println("<td><center>$ " + listaProductos.get(i).getPrecio()+ "</center></td>");
//
//                                String cod = listaProductos.get(i).getCod_Producto();
//
//                                out.println("<td><center> <input type='radio' name='radios' value=' "+i+"."+cod+" ' checked/> </center></td>");
//                                out.println("<td><center> <input type='text' name='txtCant"+i+"' size='12px' /></center></td>");
//                                out.println("</tr>");
//                            }
                        }
                        
                        for(int i =0; i < listaProdFiltro.size();i++){
                            
                            if (i == 0) {
                                    out.println("<tr>");
                                    out.println("<td>" + listaProdFiltro.get(i).getNombre()+ "</td>");
                                    out.println("<td><center>" + listaProdFiltro.get(i).getStock()+ "</center></td> ");
                                    out.println("<td><center>$ " + listaProdFiltro.get(i).getPrecio()+ "</center></td>");

                                    String cod = listaProdFiltro.get(i).getCod_Producto();

                                    out.println("<td><center> <input type='radio' name='radios' value=' "+i+"."+cod+" ' checked/> </center></td>");
                                    out.println("<td><center> <input type='text' name='txtCant"+i+"' size='12px' /></center></td>");
                                    out.println("</tr>");
                                }
                            
                            if(i > 0)
                            {
                                out.println("<tr>");
                                out.println("<td>" + listaProdFiltro.get(i).getNombre()+ "</td>");
                                out.println("<td><center>" + listaProdFiltro.get(i).getStock()+ "</center></td> ");
                                out.println("<td><center>$ " + listaProdFiltro.get(i).getPrecio()+ "</center></td>");

                                String cod = listaProdFiltro.get(i).getCod_Producto();

                                out.println("<td><center> <input type='radio' name='radios' value=' "+i+"."+cod+" '/> </center></td>");
                                out.println("<td><center> <input type='text' name='txtCant"+i+"' size='12px' /></center></td>");
                                out.println("</tr>");
                            }
                        }
                    %>
                </tbody>
                </table>
                
                <input type="submit" value="Siguiente" class="btn btn-success" />
                
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


<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
         <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        
          <div class="container"> 
            <div class="page-header">
                <center><h1>Menu Producto</h1></center>
        </div>
            <blockquote>
                Complete los datos
            </blockquote>
            <div class="col-sm-5">
        <form action="modificarProducto.do" method="post">  
            <%
                productoDTO p=(productoDTO) request.getSession().getAttribute("myModificarP");
            %>  
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Codigo: </td>
                    <td><input type="text" name="txtCodigo" value="<%out.print(p.getCod_Producto());%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td> <input type="text" name="txtNombre" value="<%out.print(p.getNombre());%>"></td>
                </tr>
                <tr>
                    <td>Stock:</td>
                    <td><input type="text" name="txtStock" value="<%out.print(p.getStock());%>"></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="txtPrecio" value="<%out.print(p.getPrecio());%>"></td>
                </tr>
            </table>       
            <input type="submit" values="Modificar" class="btn btn-success"><br>
            <br>  <a href="index.jsp"> Volver</a>
        
        
        




        </form>
                </div>
                </div>
    </body>
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Producto</title>
        <link href="CSS/stylesheets/bootstrap.min.css" rel="stylesheet"/>
    </head>
<body>
        <div class="container">
            <div class="page-header">
                <center><h1>Menu Producto</h1></center>     
           </div>
                <div class="row">
                    <div class="col-sm-8">  
            
            <blockquote>
                Ingrese los datos del producto
            </blockquote>
            </div> 
                    <div class="col-sm-5"> 
       <form action="crearProducto.do" method="post">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>Codigo:</td>
                    <td><input type="text" name="txtCodigo" placeholder="Ingrese codigo"/></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="txtNombre" placeholder="Nombre Producto"/></td>
                </tr>
                <tr>
                    <td>Stock: </td>
                    <td><input type="text" name="txtStock" placeholder="Ingrese Stock"/></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="txtPrecio" placeholder="Ingrese Precio"/></td>
                </tr>
            </table>   
            <input type="submit" value="Crear" class="btn btn-success"/><br><br><br>
            <a href="index.jsp">Volver</a>
        </form>
                    </div>
                </div>
        </div>
    </body>
</html>

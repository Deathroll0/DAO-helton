
<%@page import="java.util.List"%>
<%@page import="dto.productoDTO"%>
<%@page import="dto.productoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar todos los productos</title>
    </head>
    <body>
         <%
          List<productoDTO> productos =  (List<productoDTO>)request.getSession().getAttribute("myListP");
         %>        
         
             <table border="1">
            <tr>
                <td>Codigo</td>
                <td>Nombre</td>
                <td>Stock</td>
            </tr>
            <%
                for(int i=0; i<productos.size(); i++)
                {
                    out.println("<tr>");
                        out.println("<td>" + productos.get(i).getCod_Producto() + "</td>");
                        out.println("<td>" + productos.get(i).getNombre()+ "</td>");
                        out.println("<td>" + productos.get(i).getStock()+ "</td>");
                    out.println("</tr>");
                }
            %>
            <br><a href="index.jsp"> Volver</a>
             </table>
    </body>
</html>

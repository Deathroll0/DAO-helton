
<%@page import="java.util.List"%>
<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          List<compraDTO> compras =  (List<compraDTO>)request.getSession().getAttribute("myListCo");
         %>        
         
             <table border="1">
            <tr>
                <td>Id</td>
                <td>Fecha</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Rut</td>
                <td>Codigo</td>
            </tr>
            <%
                for(int i=0; i<compras.size(); i++)
                {
                    out.println("<tr>");
                        out.println("<td>" + compras.get(i).getId() + "</td>");
                        out.println("<td>" + compras.get(i).getFecha()+ "</td>");
                        out.println("<td>" + compras.get(i).getCantidad()+ "</td>");
                        out.println("<td>" + compras.get(i).getPrecio()+ "</td>");
                        out.println("<td>" + compras.get(i).getRut()+ "</td>");
                        out.println("<td>" + compras.get(i).getCod_prod()+ "</td>");
                    out.println("</tr>");
                }
            %>
            <br><a href="index.jsp"> Volver</a>
             </table>
    </body>
</html>

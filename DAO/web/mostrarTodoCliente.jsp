
<%@page import="java.util.List"%>
<%@page import="dto.clienteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar todos los clientes</title>
    </head>
    <body>
        <%
          List<clienteDTO> clientes =  (List<clienteDTO>)request.getSession().getAttribute("myListC");
         %>        
         
             <table border="1">
            <tr>
                <td>Rut</td>
                <td>Nombre</td>
                <td>Edad</td>
            </tr>
            <%
                for(int i=0; i<clientes.size(); i++)
                {
                    out.println("<tr>");
                        out.println("<td>" + clientes.get(i).getRut() + "</td>");
                        out.println("<td>" + clientes.get(i).getNombre()+ "</td>");
                        out.println("<td>" + clientes.get(i).getEdad()+ "</td>");
                    out.println("</tr>");
                }
            %>
            <br><a href="index.jsp"> Volver</a>
             </table>
    </body>
</html>

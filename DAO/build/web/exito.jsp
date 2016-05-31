
<%@page import="dto.compraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXITO!</title>
    </head>
    <body>
        <h1>Se ha efectuado una operacion exitosa</h1>
        <%String exito=(String) request.getSession().getAttribute("myExito");%>
        Se ha efectuado con exito: <%out.println(exito);%> <br>
        <a href="index.jsp">Volver</a>
        
        
        <%
            compraDTO lista = (compraDTO) request.getSession().getAttribute("myExito2");
        
            if (lista != null) {
                out.print("<br/>");
                out.println(lista.getId());
                out.print("<br/>");
                out.println(lista.getFecha());
                out.print("<br/>");
                out.println(lista.getCantidad());
                out.print("<br/>");
                out.println(lista.getPrecio());
                out.print("<br/>");
                out.println(lista.getRut());
                out.print("<br/>");
                out.println(lista.getCod_prod());
            
            }
        %>
        
    </body>
</html>

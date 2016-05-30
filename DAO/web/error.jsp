
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR</title>
    </head>
    <body>
        <h1>UPS! ha ocurrido un problema</h1>
        <%String error= (String) request.getSession().getAttribute("myError");%>
        Ha ocurrido un problema:<%out.println(error);%>
        <a href="index.jsp">Menu</a>
    </body>
</html>

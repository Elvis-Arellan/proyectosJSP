<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error page</h1>
        <%
            
            out.println(exception.getClass());
            out.print("<br/>");
            out.println("Estro esta pasando: ");
            out.print("<br/>");
            out.println(exception.getMessage());
            
        %>
        <a href="login.jsp">Volver</a>
    </body>
</html>

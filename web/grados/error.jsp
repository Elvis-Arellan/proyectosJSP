<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error page</title>
        <style>
            body{
                background-color: royalblue;
            }
        </style>
    </head>
    <body>
        <h1>Error page</h1>
        <%
            Integer errorPage = (Integer) application.getAttribute("capturarError");
            if (errorPage == null) {
                errorPage = 1;
            } else {
                errorPage++;
            }
            application.setAttribute("capturarError", errorPage);

        %>
        <%            
            Integer capturarError = (Integer) application.getAttribute("capturarError");

            out.print("Cantidad de error capturados: " + capturarError);
            out.print("<br/>");
            out.print("<br/>");

            out.print("El tipo de excepcion es: " + exception.getClass());
            out.print("<br/>");
            out.print("<br/>");
            out.print("El error es: " + exception.getMessage());
        %>

        <a href="index.jsp">Volver</a>
    </body>
</html>

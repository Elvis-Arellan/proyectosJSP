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
            Integer errorGlobal = (Integer) application.getAttribute("capturarError");
            if (errorGlobal == null) {
                errorGlobal = 1;
            } else {
                errorGlobal++;
            }
            application.setAttribute("capturarError", errorGlobal);

        %>
        <%            
            out.print("Cantidad de errores Globales: " + errorGlobal);
            out.print("<br/>");
            out.print("<br/>");
            
            String clase = exception.getClass().getSimpleName();

            if ("NumberFormatException".trim().equals(clase)) {
                out.print("El valor ingresado no es un número válido");
            }else if("ArithmeticException".trim().equals(clase)){
                out.print("Error matemático en el cálculo");
            }else{
                out.print("Error inesperado");
            }


            out.print("<br/>");
            out.print("<br/>");
            out.print("El error es: " + exception.getMessage());


        %>

        <a href="index.jsp">Volver</a>
    </body>
</html>

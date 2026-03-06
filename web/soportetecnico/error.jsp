<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <style>
            body{
                background-color: rosybrown;
            }
        </style>
    </head>
    <body>
        <h1>Error Page</h1>
        <%
            Integer errorGlobal = (Integer) application.getAttribute("errorGlobal");
            if(errorGlobal == null){
                errorGlobal=1;
            }else{
                errorGlobal++;
            }
            application.setAttribute("errorGlobal", errorGlobal);
            
            out.print("Cantidad de error capturados: "+errorGlobal);
            out.print("<br/>");
            out.print(exception.getClass().getName());
            out.print("<br/>");
            out.print("<br/>");
            out.print(exception.getMessage());
            
        %>
    </body>
</html>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mensajes</title>
        <style>
            body{
                background-color: burlywood;
            }

            p{
                border: 5px solid red;
                padding: 0.5rem;
                background-color: white;
            }
            h2{
                padding: 0.5rem;
            }
        </style>
    </head>
    <body>
        <%
           
            String name = (String) session.getAttribute("user");
            ArrayList<String> mensajes = (ArrayList<String>) application.getAttribute("mensajes");
        %>

        <h2>Usuario actual: <%= name%></h2>
        <h3>Mensajes:</h3>
        <%
            for (String elem : mensajes) {
                out.print("<p style='color: blue;'>" + elem + "</p>");
            }
        %>
        <a href="login.jsp">Inicio</a>



    </body>
</html>

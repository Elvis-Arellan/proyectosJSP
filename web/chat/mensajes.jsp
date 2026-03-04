<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
    </head>
    <body>
        <%
            String name = (String) session.getAttribute("user");
            ArrayList<String> mensajes  = (ArrayList<String>) application.getAttribute("mensajes");
        %>

        <p><%= name%></p>
        <p><%= mensajes%></p>
    </body>
</html>

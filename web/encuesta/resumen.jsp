<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    
    String name = (String) session.getAttribute("txtUser");
    
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary page</title>
    </head>
    <body>
        <h1><%= name%>: This is your Summary!</h1>






        <a href="pregunta.jsp">See Questions</a>
        <br/>
        <br/>
        <a href="resumen.jsp?logout=true">LogOut</a>
    </body>
</html>

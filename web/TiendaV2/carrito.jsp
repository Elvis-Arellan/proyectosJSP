<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String producto = request.getParameter("producto");
    String precio = request.getParameter("precio");
    String cantidad = request.getParameter("cantidad");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CARRITO Page</title>
    </head>
    <body>
        <h1>Carrito Resumen</h1>
        <%
            out.print("<p>Producto: " + producto + "</p>");
            out.print("<p>Precio: " + precio + "</p>");
            out.print("<p>Cantidad: " + cantidad + "</p>");
            
            double total = Double.parseDouble(precio) * Double.parseDouble(cantidad);
            
            out.print("<p>Total " + total + " Soles</p>");

        %>
    </body>
</html>

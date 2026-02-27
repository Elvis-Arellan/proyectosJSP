<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.util.ArrayList"%>

<%
    HttpSession sesion = request.getSession();
    ArrayList<String[]> carrito = (ArrayList<String[]>) sesion.getAttribute("carrito");

    if (carrito == null) {
        carrito = new ArrayList<>();
        sesion.setAttribute("carrito", carrito);
    }

    String agregar = request.getParameter("agregar");
    String precio = request.getParameter("precio");

    if (agregar != null && precio != null) {
        carrito.add(new String[]{agregar, precio});
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tienda</title>
    </head>
    <body>

        <h1>Productos</h1>

        <table border="1">
            <tr>
                <th>#</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Acción</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Phone</td>
                <td>152.30</td>
                <td><a href="index.jsp?agregar=Phone&precio=152.30">Agregar</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Laptop</td>
                <td>545.00</td>
                <td><a href="index.jsp?agregar=Laptop&precio=545.00">Agregar</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>mesa</td>
                <td>545.00</td>
                <td><a href="index.jsp?agregar=mesa&precio=545.00">Agregar</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td>pantalla</td>
                <td>545.00</td>
                <td><a href="index.jsp?agregar=pantalla&precio=545.00">Agregar</a></td>
            </tr>
        </table>

        <br>
        <a href="carrito.jsp">Ver carrito (<%= carrito.size()%>)</a>

    </body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
   
    ArrayList<String[]> carrito = (ArrayList<String[]>) session.getAttribute("carrito");

    if (carrito == null) {
        carrito = new ArrayList<>();
        session.setAttribute("carrito", carrito);
    }
    String producto = request.getParameter("producto");
    String precio = request.getParameter("precio");
    String cantidad = request.getParameter("cantidad");

    if (producto != null && precio != null && cantidad != null) {
        carrito.add(new String[]{producto, precio, cantidad});
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX</title>
    </head>
    <body>
        <h1>TABLA DE PRODUCTOS</h1>
        <table border="1.5">
            <tr>
                <th>ID</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Count</th>
                <th>Accion</th>
            </tr>
            <tr>
                <td>1</td>
                <td>monitor</td>
                <td>565</td>
                <td>2</td>
                <td><a href="index.jsp?producto=monitor&precio=565&cantidad=2" >Agregar</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>parlantes</td>
                <td>65</td>
                <td>2</td>
                <td><a href="index.jsp?producto=parlantes&precio=65&cantidad=2" >Agregar</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>mouse</td>
                <td>200</td>
                <td>1</td>
                <td><a href="index.jsp?producto=mouse&precio=200&cantidad=1" >Agregar</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td>teclado</td>
                <td>120</td>
                <td>1</td>
                <td><a href="index.jsp?producto=teclado&precio=120&cantidad=1" >Agregar</a></td>
            </tr>
        </table>
        <br/>
        <a href="carrito.jsp">ver carrito (<%= carrito.size()%>)</a>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.util.ArrayList"%>

<%
    HttpSession sesion = request.getSession();
    ArrayList<String[]> carrito = (ArrayList<String[]>) sesion.getAttribute("carrito");

    if (carrito == null) {
        carrito = new ArrayList<>();
    }

    String vaciar = request.getParameter("vaciar");

    if ("true".equals(vaciar)) {
        carrito.clear();
        sesion.setAttribute("carrito", carrito);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Carrito</title>
    </head>
    <body>

        <h1>Tu Carrito</h1>

        <%
            if (carrito.isEmpty()) {
        %>
        <p style="color:red;">El carrito está vacío</p>
        <%
        } else {
            double total = 0;
        %>

        <table border="1">
            <tr>
                <th>#</th>
                <th>Producto</th>
                <th>Precio</th>
            </tr>

            <%
                for (int i = 0; i < carrito.size(); i++) {
                    String[] item = carrito.get(i);
                    double p = Double.parseDouble(item[1]);
                    total += p;
            %>
            <tr>
                <td><%= (i + 1)%></td>
                <td><%= item[0]%></td>
                <td>S/. <%= String.format("%.2f", p)%></td>
            </tr>
            <%
                }
            %>
        </table>

        <p><strong>Total: S/. <%= String.format("%.2f", total)%></strong></p>

        <%
            }
        %>

        <br>
        <a href="carrito.jsp?vaciar=true">Vaciar carrito</a>
        <br>
        <a href="index.jsp">Seguir comprando</a>

    </body>
</html>
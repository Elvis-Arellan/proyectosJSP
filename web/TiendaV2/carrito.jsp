<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
 
    ArrayList<String[]> carrito = (ArrayList<String[]>) session.getAttribute("carrito");

    if (carrito == null) {
        carrito = new ArrayList<>();
    }
    String vaciar = request.getParameter("vaciar");

    if ("true".equals(vaciar)) {
        carrito.clear();
        session.setAttribute("carrito", carrito);
        session.invalidate();
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CARRITO Page</title>
    </head>
    <body>
        <h1>Carrito Resumen</h1>

        <%            if (carrito.isEmpty()) {
        %>
        <p>El carrito esta vacio</p>
        <%
        } else {
            double total = 0;
            int contador = 1;
        %>
        <table border='1.5'>

            <tr>
                <th>ID</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Count</th>
            </tr>
            <%
                for (int i = 0; i < carrito.size(); i++) {
                    String[] item = carrito.get(i);
                    double p = Double.parseDouble(item[1]);
                    total += p;

            %>
            <tr>
                <td> <%= i + 1%> </td>
                <td> <%= item[0]%>  </td>
                <td>S/. <%= String.format("%.2f", p)%></td>
                <td><%= item[2]%></td>
            </tr>
            <%
                }
            %>
        </table>
        <p><strong>Total: S/. <%= String.format("%.2f", total)%></strong></p>
        <%
            }
        %>


        <a href="index.jsp">Seguir comprando</a>
        <br/>
        <a href="carrito.jsp?vaciar=true">Vaciar carrito</a>
    </body>
</html>

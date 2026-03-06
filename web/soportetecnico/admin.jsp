<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String emailAdmin = (String) session.getAttribute("email");
    ArrayList<String[]> desc = (ArrayList<String[]>) application.getAttribute("descError");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>
    </head>
    <body>
        <h1>Admin <%= emailAdmin%></h1>

        <%
            int count = 0;
            for (String[] elem : desc) {
                count++;
                out.print("<p>--------------------------------------------------------------------</p>");
                out.print("<br/>");
                out.print("Email: " + elem[0]);
                out.print("<br/>");
                out.print("Reporte: " + elem[1]);
                out.print("<br/>");
                out.print("<p>---------------------------------------------------------------------</p>");
            }
            out.print("Cantidad de tickets reportados: " + count);
                out.print("<br/>");
                out.print("<br/>");

        %>

        <a href="login.jsp">Volver Login</a>
    </body>
</html>

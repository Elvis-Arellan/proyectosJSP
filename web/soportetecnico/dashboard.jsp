<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = (String) session.getAttribute("email");
    ArrayList<String[]> desc = (ArrayList<String[]>) application.getAttribute("descError");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <h1>Dashboard</h1>
        <p>User conectado: <%=email%></p>
        <%
            int count = 0;
            for (String[] elem : desc) {
                out.print("<p>--------------------------------------------------------------------</p>");
                count++;
                out.print("Ticket #" + count);
                out.print("<br/>");
                out.print("Reporte: " + elem[1]);
                out.print("<p>---------------------------------------------------------------------</p>");
            }

        %>
        <a href="ticket.jsp" >Volver ticket</a>
        <br/>
        <a href="login.jsp" >Volver login</a>
    </body>
</html>

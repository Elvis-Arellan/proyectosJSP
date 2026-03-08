<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nameUser = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <h1>DASHBOARD</h1>
        <%
            if ("cliente".equals(nameUser)) {
        %>
        <jsp:include page="panelCliente.jsp">
            <jsp:param name="nombrexd" value="<%= nameUser%>" />
        </jsp:include>
        <%
        } else if ("vendedor".equals(nameUser)) {
        %>
        <jsp:include page="panelVendedor.jsp">
            <jsp:param name="nombrexd" value="<%= nameUser%>" />  
        </jsp:include>
        <%
            }
        %>
    </body>
</html>

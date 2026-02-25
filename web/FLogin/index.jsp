<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp?error1=nulls");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Page</title>
    </head>
    <body>
        <h1>Principal Page for <%= sesion.getAttribute("user")%></h1>
        <%
            String login = request.getParameter("login");
            out.println("<h2>Welcome: " + sesion.getAttribute("user") + "</h2>");
            if (login != null) {
                out.println("<p style='color: green;'>Sesion iniciada</p>");
            }
        %>
        <a href="logout.jsp">LogOut</a>
    </body>
</html>

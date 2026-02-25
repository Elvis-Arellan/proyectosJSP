<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("user")== null){
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
        <h1>Principal Page</h1>
        <%
        out.println("<h2 style='color: green;'>Welcome: "+sesion.getAttribute("user") +"</h2>");
        
        %>
        <a href="logout.jsp">LogOut</a>
    </body>
</html>

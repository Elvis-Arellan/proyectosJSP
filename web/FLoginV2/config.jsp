<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();

    if (sesion.getAttribute("user")==null){
        response.sendRedirect("login.jsp?error1=null");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings Page</title>
    </head>
    <body>

        <%
                out.println("<h1>Settings: " + sesion.getAttribute("user") + "</h1>");
        %>
        <a href="perfil.jsp">Back</a>
        <br/>
         <a href="logout.jsp">LogOut</a>
    </body>
</html>

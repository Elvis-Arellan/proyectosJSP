<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    
    if (sesion.getAttribute("user") == null) {
        response.sendRedirect("login.jsp?error1=null");
        return;
    }
    
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PerfilBook</title>
    </head>
    <body>
        
        <a href="config.jsp">Settings</a>
        <%
            out.println("<h1>User actives: <strong style='color: orange;'>"+sesion.getAttribute("user")+"</strong></h1>");
            out.println("<p>Bienvenido a tu perfil <strong style='color: orange;'>"+sesion.getAttribute("user")+" </strong>. Actualmente has iniciado sesión como  <strong style='color: orange;'>"+sesion.getAttribute("user")+"</strong>. En esta sección,  <strong style='color: orange;'>"+sesion.getAttribute("user")+"</strong> puede mostrar su perfil. </p>");
            out.println();
            
            out.println("<br/>");
            out.println("<br/>");
            out.println("<p>Mostrando perfil...</p>");
            out.println("<br/>");
            out.println("<br/>");out.println("<br/>");
            out.println("<br/>");
        %>

        <a href="logout.jsp">LogOut</a>

    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%
    HttpSession sesion = request.getSession();
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    try {

        if ("admin".equals(password)) {
            sesion.setAttribute("user", user);
            response.sendRedirect("index.jsp?login=succes");
            return;
        } else {
            response.sendRedirect("login.jsp?error=password");
            return;
        }
    } catch (Exception e) {
        out.print("Ingrese los datos correctos");
    }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DoLogin Page</title>
    </head>
    <body>

    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>

        <form method="POST" action="doLogin.jsp">
            <lable>User</lable>
            <input type="text" placeholder="user" name="user"/>
            <br/>
            <lable>Password</lable>
            <input type="password" placeholder="Password" name="password"/>
            <br/>
            <button type="submit">Ingresar</button>
        </form>
        <%
            HttpSession sesion = request.getSession();
            String error1 = request.getParameter("error1");
            String error2 = request.getParameter("error2");
            String error3 = request.getParameter("error3");
            String msg = request.getParameter("session");
            if (error1 != null) {
                out.print("<p style='color: red;'>Error 1: No puede acceder mediante url, use el login</p>");
            }
            if (error2 != null) {
                out.print("<p style='color: red;'>Error 2: Campos vacios, ingrese sus datos en el login </p>");
            }
            if (error3 != null) {
                out.print("<p style='color: red;'>Error 3: Contraseña incorrecta </p>");
            }
            if (msg != null) {
                out.print("<p style='color: green;'>Sesion cerrada </p>");
            }
        %>
    </body>
</html>

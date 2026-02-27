<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login Page</h1>
        
        <form method="POST" action="doLogin.jsp">
            <label>User</label>
            <input type="text" name="user" placeholder="user" />
            <br/>
            <label>Password</label>
            <input type="password" name="password" placeholder="********" />
            <br/>
            <button type="submit">LogIn</button>
        </form>
        <%
            String error1 = request.getParameter("error1");
            String error2 = request.getParameter("error2");
            String error3 = request.getParameter("error3");
            String logout = request.getParameter("logout");
            if(error1 != null){
                out.print("<p Style='color: red;'>No se pueede acceder por url, use el login</p>");
            }
            if(error2 != null){
                out.print("<p Style='color: red;'>Llene los campos</p>");
            }
            if(error3 != null){
                out.print("<p Style='color: red;'>Contraseña incorrecta</p>");
            }
            if(logout != null){
                out.print("<p Style='color: green;'>LogOut success</p>");
            }
        %>
    </body>
</html>

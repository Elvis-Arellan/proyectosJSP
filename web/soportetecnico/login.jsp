<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Necesito un sistema de soporte técnico simple. El usuario hace login, abre un ticket describiendo su problema, 
//y puede ver todos sus tickets anteriores. Hay una página de administrador que muestra todos los tickets de todos 
//los usuarios con un contador global. Si alguien accede sin sesión, redirige al login. Cualquier error va a una página de error
//que registra el contador global de errores.

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form method="POST" action="doLogin.jsp">
            <label>email</label>
            <input type="email" name="email" value="toyota@gmail.com" />
            <br/>
            <br/>
            <label>password</label>
            <input type="password" name="password" value="1234" />
            <br/>
            <br/>
            <button type="submit">Login</button>
        </form>
        <%
            String error1 = request.getParameter("error1");
            if("true".equals(error1)){
                %>
                <p style="color: red;">Se accede solo por login</p>
                <%
            }
        %>
    </body>
</html>

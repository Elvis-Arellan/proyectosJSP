<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Necesito una página de diagnóstico de mi sistema. El usuario entra con su nombre, y la página debe mostrar
//cuatro datos usando exclusivamente `pageContext` para guardar y leer, nunca `session.setAttribute` ni `application.setAttribute` directamente:
//> - Su nombre en ámbito `SESSION`
//> - Un mensaje de bienvenida en ámbito `REQUEST`
//> - Un contador de visitas globales en ámbito `APPLICATION`
//> - El nombre de la página actual en ámbito `PAGE`
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>formulario</title>
    </head>
    <body>
        <h1>Login</h1>
        <form method="POST" action="doLogin.jsp">
            <label>name</label>
            <input name="name" type="text"/>
            <button type="submit">enviar</button>
        </form>
    </body>
</html>

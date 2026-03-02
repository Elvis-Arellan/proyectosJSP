<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index Page</title>
    </head>
    <body>
        <h1>Login</h1>

        <form method="POST" action="pregunta.jsp?loginOk=true">
            <label>User Name</label>
            <input type="text" name="txtName" placeholder="type your user" />
            <br/>
            <br/>
            <br/>
            <button type="submit">Answer...</button>
        </form>
<%
    String deslogueo = request.getParameter("salir");
    String deslogueo2 = request.getParameter("salir2");
    String error1 = request.getParameter("error1");
    String error2 = request.getParameter("error2");

    
    if("true".equals(deslogueo)){
        out.print("<p style='color: green;'>Saliste exitosamente de preguntas</p>");
    }
    if("true".equals(deslogueo2)){
        out.print("<p style='color: green;'>Saliste exitosamente de resumen</p>");
    }
    if("true".equals(error1)){
        out.print("<p style='color: red;'>Ingrese un usuario, no se permiten vacios</p>");
    }
    if("true".equals(error2)){
        out.print("<p style='color: red;'>No se accede por url</p>");
    }

%>

    </body>
</html>

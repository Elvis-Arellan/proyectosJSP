<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sitio Web</title>
         <style>
        body{
            background-color: royalblue;
        }
    </style>
    </head>
   
    <body>
        <h1>form</h1>
        <form action="doLogin.jsp" method="POST">
            <label>user</label>
            <input name="user" type="text" />
            <button type="submit">Enviar</button>
        </form>
    </body>
    <%
        String error1 = request.getParameter("error1");
        String error2 = request.getParameter("error2");
        
        if("true".equals(error1)){
            out.print("no permite nulos");
        }
        
        if("true".equals(error2)){
            out.print("Agregue un usuario");
        }
    %>
</html>

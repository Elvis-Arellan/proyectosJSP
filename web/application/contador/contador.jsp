<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contador - APPLICATION</title>
         <style>
        body{
            background-color: royalblue;
        }
    </style>
    </head>
   
    <body>
        <h1>Contando la cantidad de visitas desde que el servidor arrancó</h1>
        <%
            
            String user = (String) session.getAttribute("Usuario");
            if(user == null){
                response.sendRedirect("login.jsp?error1=true");
                return;
            }

            Integer contador = (Integer) application.getAttribute("visitas");

            if (contador == null) {
                contador = 1;
            } else {
                contador++;
            }
            application.setAttribute("visitas", contador);
        %>
        <p>Bienvenido <%= user%></p>
        <p> número de visitas: <%= contador%></p>

        <a href="contador.jsp">Agregar visita</a>
        
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Necesito una página de diagnóstico de mi sistema. El usuario entra con su nombre, y la página debe mostrar
//cuatro datos usando exclusivamente `pageContext` para guardar y leer, nunca `session.setAttribute` ni `application.setAttribute` directamente:
//> - Su nombre en ámbito `SESSION`
//> - Un mensaje de bienvenida en ámbito `REQUEST`
//> - Un contador de visitas globales en ámbito `APPLICATION`
//> - El nombre de la página actual en ámbito `PAGE`

    Integer visitas = (Integer) pageContext.getAttribute("visitas", PageContext.APPLICATION_SCOPE);
    if (visitas == null) {
        visitas = 0;
        out.print(visitas);
    } else {
        visitas++;
    }
    pageContext.setAttribute("visitas", visitas, PageContext.APPLICATION_SCOPE);
    
    out.print("nombre de la calse: "+page.getClass().getName());
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diagnostico</title>
    </head>
    <body>
        <h1>diagnostico</h1>
        <%
            out.print("Visitas: " + visitas);
            pageContext.getAttribute("user",PageContext.SESSION_SCOPE);
           
            if ("true".equals(pageContext.getAttribute("envio",PageContext.REQUEST_SCOPE))) {
                out.print("<p>Bienvenido del envio: " + pageContext.getAttribute("user") + "</p>");
            }
        %>
    </body>
</html>

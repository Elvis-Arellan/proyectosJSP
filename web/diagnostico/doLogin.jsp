<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
//Necesito una página de diagnóstico de mi sistema. El usuario entra con su nombre, y la página debe mostrar
//cuatro datos usando exclusivamente `pageContext` para guardar y leer, nunca `session.setAttribute` ni `application.setAttribute` directamente:
//> - Su nombre en ámbito `SESSION`
//> - Un mensaje de bienvenida en ámbito `REQUEST`
//> - Un contador de visitas globales en ámbito `APPLICATION`
//> - El nombre de la página actual en ámbito `PAGE`

    String name = request.getParameter("name");
     pageContext.setAttribute("user", name, PageContext.SESSION_SCOPE);
     pageContext.forward("diagnostico.jsp?envio=true");
%>

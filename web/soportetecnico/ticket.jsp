<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = (String) session.getAttribute("email");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket User</title>
    </head>
    <body>
        <h1>Ticket: <%=email%></h1>
        
        <form method="POST" action="doTicket.jsp">
            Describa su problema: <textarea name="txtArea"></textarea>
            <br/>
            <button type="submit">enviar</button>
        </form>
        
        
        <a href="login.jsp">Volver Login</a>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
    </head>
    <body>
        <h1>Perfiles para postear</h1>
        <p>Bienvenido <%= name%></p>
        <form method="POST" action="doPost.jsp">
            <textarea id="id" name="chat" rows="5" cols="10"></textarea>
            <br/>
            <button type="submit">Post</button>
        </form>
    </body>
</html>

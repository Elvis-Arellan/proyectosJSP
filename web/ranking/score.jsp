<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Score</title>
    </head>
    <body>
        <h1>Add Score</h1>
        <p>Bienvenido <%= user%>, agregue su score</p>
        <form method="POST" action="doScore.jsp">
            <label>Score</label>
            <input type="number" name="score" placeholder="add score" />
            <button type="submit">Add</button>   
        </form>
    </body>
</html>

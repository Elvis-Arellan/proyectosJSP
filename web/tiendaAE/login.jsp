<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="doLogin.jsp" method="POST">
            <label>user</label>
            <input type="text" name="user"/>
            <br/>
            <label>passwod</label>
            <input type="password" name="password" value="1234"/>
            <br/>
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>

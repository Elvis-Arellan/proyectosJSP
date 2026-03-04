<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form method="POST" action="doLogin.jsp">
            <label>User:</label>
            <input type="text" name="user" placeholder="username"/>
            <button type="submit">LogIn</button>
        </form>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form method="POST" action="doLogin.jsp">
            <label>email</label>
            <input type="email" name="email" value="toyota@gmail.com" />
            <label>password</label>
            <input type="password" name="password" value="1234" />
            <button type="submit">Login</button>
        </form>
    </body>
</html>

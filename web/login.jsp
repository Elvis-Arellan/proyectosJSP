<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <form method="POST" action="doLogin.jsp">
            <lable>User</lable>
            <input type="text" placeholder="user" name="user"/>
            <br/>
            <lable>Password</lable>
            <input type="password" placeholder="Password" name="password"/>
            <br/>
            <button type="submit">Ingresar</button>
        </form>
    </body>
</html>

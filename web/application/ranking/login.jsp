<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body{
                background-color: burlywood;
            }
        </style>
    </head>
    <body>
        <h1>Login - Ranking Score</h1>
        <form method="POST" action="doLogin.jsp" >
            <label>User: </label>
            <input name="user" type="text" placeholder="type your user"/>
            <button type="submit">LogIn</button>
        </form>
    </body>
</html>

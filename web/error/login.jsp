<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login form Page</title>
    </head>
    <body>
        <h1>Divide Form</h1>
        
        <form method="POST" action="show.jsp">
            <label>Numero 1</label>
            <input type="text" name="num1"/>
            <br/>
            <label>Numero 2</label>
            <input type="text" name="num2"/>
            <br/>
            <button type="submit">Calcular</button>
        </form>
        
    </body>
</html>

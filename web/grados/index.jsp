<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <style>
             body{
                background-color: rosybrown;
            }
        </style>
    </head>
    <body>
        <h1>A convertir</h1>
        <form method="POST" action="doConvert.jsp">
            <label>Ingrese temperatura en Celsius</label>
            <input type="text" name="value"/>
            <br/>
            Fahrenheit <input type="radio" name="choose" value="fa"/>
            <br/>
            Kelvin<input type="radio" name="choose" value="ke"/>
            <br/>
            <br/>
            <button type="submit">Convertir</button>
        </form>
    </body>
</html>

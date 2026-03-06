<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <label>Prestamo bancario</label>
            <input type="text" name="monto"/>
            <label>Interes</label>
            <input type="text" name="interes"/>
            <label>Años</label>
            <input type="text" name="year"/>
           
            <br/>
            <button type="submit">Convertir</button>
        </form>
    </body>
</html>

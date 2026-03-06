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
            <br/>
            10% <input type="radio" name="interes" value="10"/>
            <br/>
            25%<input type="radio" name="interes" value="0.25"/>
            <br/>
            30%<input type="radio" name="interes" value="0.30"/>
            <br/>
            <br/>
            1 año<input type="radio" name="year" value="12"/>
            <br/>
            2 años<input type="radio" name="year" value="24"/>
            <br/>
            3 años<input type="radio" name="year" value="72"/>
            <br/>
            <br/>
            <button type="submit">Convertir</button>
        </form>
    </body>
</html>

<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>doConvert</title>
        <style>
            body{
                background-color: rosybrown;
            }
        </style>
    </head>
    <body>
        <h1>doConvert</h1>


        <%            
            double value = Double.parseDouble(request.getParameter("value"));
            String choose = request.getParameter("choose");
            double fa;
            double ke;
            if ("fa".equals(choose)) {
                fa = (value * 1.8) + 32;
                out.print("La conversion a Fa: " + fa);
            } else if ("ke".equals(choose)) {
                ke = value + 273.15;
                out.print("La conversion a kelvin: " + ke);
            }
        %>
        
        <a href="index.jsp">Volver</a>
    </body>
</html>

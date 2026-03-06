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
            double monto = Double.parseDouble(request.getParameter("monto"));//10000
            double interes = Double.parseDouble(request.getParameter("interes"));// 0.25 0.30
            double years = Double.parseDouble(request.getParameter("year"));//12 24 72

            double deudaTotal = (monto * interes) + monto;
            double mensualidad = deudaTotal / years;
            out.print("Deuda total: " + deudaTotal);
            out.print("Pago mensual: " + mensualidad);
        %>

        <a href="index.jsp">Volver</a>
    </body>
</html>

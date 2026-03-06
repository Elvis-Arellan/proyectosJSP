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
            int monto = Integer.parseInt(request.getParameter("monto"));//10000
            int interes = Integer.parseInt(request.getParameter("interes"));// 0.25 0.30
            int years = Integer.parseInt(request.getParameter("year"));//12 24 72

            int deudaTotal = (monto * interes) + monto;
            int mensualidad = deudaTotal / years;
            
            out.println("Monto: " + monto +" Soles");
            out.println("<br/>");
            out.println("interes: " + String.format("%.1f", (interes*100))+"%");
            out.println("<br/>");
            out.println("Años " + years+" meses");
            out.println("<br/>");
            
            out.println("--------------------------------------------------------");
            out.println("<br/>");
            
            out.println("Deuda total: " + deudaTotal+" Soles");
            out.println("<br/>");
            out.println("Pago mensual: " + String.format("%.2f", mensualidad)+" Soles");
            out.println("<br/>");
        %>

        <a href="index.jsp">Volver</a>
    </body>
</html>

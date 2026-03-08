<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Tengo una app de gimnasio. El usuario ingresa su peso y altura y quiere saber su IMC real, 
//su categoría y cuántas calorías diarias debería consumir según su peso. Necesito que los tres cálculos 
//estén en métodos declarados con <%!%
//y que el JSP solo los llame.

    //double calcularIMC(double peso, double altura) { ... }
    //String categoriaIMC(double imc) { ... }
   // int calcularCalorias(double peso) { ... }
   
//- IMC = peso / (altura * altura)
//- Calorías = peso * 24
//- Categorías: menor 18.5 = Bajo peso, menor 25 = Normal, menor 30 = Sobrepeso, mayor o igual 30 = Obesidad
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
    </body>
</html>

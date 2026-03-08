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
    String user = (String) session.getAttribute("user");
    String peso = (String) session.getAttribute("peso");
    String altura = (String) session.getAttribute("altura");

    double peso2 = Double.parseDouble(peso);
    double altura2 = Double.parseDouble(altura);
%>
<%!
    double calcularImc(double peso, double altura) {
        double imc = peso / (altura * altura);
        return imc;
    }

    double calcularCalorias(double peso) {
        return peso * 24;
    }

    String categoria(double peso, double altura) {
        String msj = "";
        if (calcularImc(peso, altura) < 18.5) {
            return msj = "bajo peso";
        } else if (calcularImc(peso, altura) < 25) {
            return msj = "normal";
        } else if (calcularImc(peso, altura) < 30) {
            return msj = "sobrepeso";
        } else if (calcularImc(peso, altura) >= 30) {
            return msj = "obesidad";
        }
        return msj = "Te mamaste pendejo";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <h1>Mostrando Resultados</h1>
        <p><%= String.format("%.2f",calcularImc(peso2, altura2))%></p>
        <p><%= calcularCalorias(peso2)%></p>
        <p><%= categoria(peso2, altura2)%></p>
    </body>
</html>

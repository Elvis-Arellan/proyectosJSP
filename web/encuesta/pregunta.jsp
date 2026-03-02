<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("txtName");
    String userFinal;

    if (name != null) {
        // Si el formulario es vacio o tiene valor
        session.setAttribute("txtUser", name);
        userFinal = name;
    } else {
        // Si es null (por refresh o botón atrás, porque se perdio el valor query del form), lo buscamos en la sesión
        userFinal = (String) session.getAttribute("txtUser");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asking...</title>
    </head>
    <body>
        <h1><em Style='color: royalblue;'><%= userFinal%>:</em> Please answer Our three Questions</h1>
        <p><strong>Where 1 is the lowest probability and 5 is the highest probability</strong></p>

        <form action="resumen.jsp" method="POST">
            <label>#1 - What is the likelihood that you will recommend this course?</label>
            <br/>
                <input type="radio" name="radioUno" value="1">1
                <input type="radio" name="radioUno" value="2">2
                <input type="radio" name="radioUno" value="3">3
                <input type="radio" name="radioUno" value="4">4
                <input type="radio" name="radioUno" value="5">5
            <br/>
            <br/>
            <br/>
            <label>#2 - What is the likelihood that you will recommend this teacher?</label>
            <br/>
                <input type="radio" name="radioDos" value="1">1
                <input type="radio" name="radioDos" value="2">2
                <input type="radio" name="radioDos" value="3">3
                <input type="radio" name="radioDos" value="4">4
                <input type="radio" name="radioDos" value="5">5
            <br/>
            <br/>
            <br/>
            <label>#3 - What is the likelihood that you will recommend our University?</label>
            <br/>
                <input type="radio" name="radioTres" value="1">1
                <input type="radio" name="radioTres" value="2">2
                <input type="radio" name="radioTres" value="3">3
                <input type="radio" name="radioTres" value="4">4
                <input type="radio" name="radioTres" value="5">5
            <br/>
            <br/>
            <br/>
            <button type="submit">see summary</button>
        </form>

        <br/>
        <br/>
        <a href="pregunta.jsp?salir=saliste">LogOut</a>
    </body>
</html>

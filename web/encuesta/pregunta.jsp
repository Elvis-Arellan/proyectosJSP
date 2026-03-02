<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String salir = request.getParameter("salir");
    if("true".equals(salir)){
        session.invalidate();
        response.sendRedirect("index.jsp?salir=true");
        return;
    }
    String name = request.getParameter("txtName");
    String login = request.getParameter("loginOk");
    String userFinal;  
    session.setAttribute("loginOk", login);
    if(login == null){
        response.sendRedirect("index.jsp?error2=true");
        return;
    }
    
    if (name != null) {
        // Si el formulario es vacio o tiene valor
        session.setAttribute("txtUser", name);
        userFinal = name;
    } else {
        // Si es null (por refresh o botón atrás, porque se perdio el valor query del form), lo buscamos en la sesión
        userFinal = (String) session.getAttribute("txtUser");
    }
    
    if(userFinal.isEmpty()){
        response.sendRedirect("index.jsp?error1=true");
        return;
    }
%>
<%
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
        <%
            String error3 = request.getParameter("error3");
            if("true".equals(error3)){
                out.print("<p style='color: red;'>Seleccione un puntaje a cada pregunta</p>");
            }
        %>
        <br/>
        <br/>
        <a href="pregunta.jsp?salir=true">LogOut</a>
    </body>
</html>

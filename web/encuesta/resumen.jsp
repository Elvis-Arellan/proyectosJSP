<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String name = (String) session.getAttribute("txtUser");

%>
<%    
    String radioUno = request.getParameter("radioUno");
    String radioUnoFinal;
    String radioDos = request.getParameter("radioDos");
    String radioDosFinal;
    String radioTres = request.getParameter("radioTres");
    String radioTresFinal;

    if (radioUno != null || radioDos != null || radioTres != null) {
        session.setAttribute("answerOne", radioUno);
        session.setAttribute("answerTwo", radioDos);
        session.setAttribute("answerThre", radioTres);
        radioUnoFinal = radioUno;
        radioDosFinal = radioDos;
        radioTresFinal = radioTres;
    } else {
        radioUnoFinal = (String) session.getAttribute("answerOne");
        radioDosFinal = (String) session.getAttribute("answerTwo");
        radioTresFinal = (String) session.getAttribute("answerThre");
    }

%>

<%    
    double one = Double.parseDouble(radioUnoFinal);
    double two = Double.parseDouble(radioDosFinal);
    double thre = Double.parseDouble(radioTresFinal);
    double promFinal = (one + two + thre) / 3;

%>
<%
    String ms1="";
    if(promFinal<2){
        ms1="Insatisfecho";
    }else if(promFinal >= 2 && promFinal <3){
        ms1="Regular";
    }else if(promFinal >= 3 && promFinal <=4){
        ms1="Satisfecho";
    }else if(promFinal > 4){
        ms1="Muy satisfecho";
    }
%>
<%
     String logout = request.getParameter("logout");
    if("true".equals(logout)){
        session.invalidate();
        response.sendRedirect("index.jsp?salir=fromResumen");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary page</title>
    </head>
    <body>
        <h1><em style='color: green;'><%= name%>:</em> This is your Summary!</h1>

        <table border='1.5'>
            <tr>
                <th>Question 1</th>
                <th>Question 2</th>
                <th>Question 3</th>
                <th>Final Average</th>
                <th>Message</th>
            </tr>
            <tr>
                <td><%= radioUnoFinal%></td>
                <td><%= radioDosFinal%></td>
                <td><%= radioTresFinal%></td>
                <td style='color: royalblue;'><%= String.format("%.2f", promFinal)%></td>
                    <% 
                    if("Insatisfecho".equals(ms1)){
                        out.print("<td style='color: red;'>"+ms1+"</td>");
                    }else if("Regular".equals(ms1)){
                        out.print("<td style='color: red;'>"+ms1+"</td>");
                    }else if("Satisfecho".equals(ms1)){
                         out.print("<td style='color: orange;'>"+ms1+"</td>");
                    }else if("Muy satisfecho".equals(ms1)){
                         out.print("<td style='color: green;'>"+ms1+"</td>");
                    }
                    %>
            </tr>

        </table>
        <br/>
        <br/>

        <a href="pregunta.jsp">Modify</a>
        <br/>
        <br/>
        <a href="resumen.jsp?logout=true">LogOut</a>
    </body>
</html>

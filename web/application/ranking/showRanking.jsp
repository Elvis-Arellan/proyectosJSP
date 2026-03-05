<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Ranking</title>
        <style>
            body{
                background-color: burlywood;
            }
        </style>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("usuario");
            ArrayList<String[]> ranking = (ArrayList<String[]>) application.getAttribute("ranking");
        %>
        <h1>Show Ranking</h1>
        <h4>User Logueado: <%= user%></h4>
        <h4>Top 3</h4>
        <table border="1.5">
            <tr>
                <th>User</th>
                <th>Ranking</th>
            </tr>
           
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>
        <br/>
        <br/>
        <br/>

        <h4>Lista</h4>
        <table border="1.5">
            <tr>
                <th>User</th>
                <th>Ranking</th>
            </tr>
            <%
                double total = 0;
                for (String[] elem : ranking) {
                    double rank = Double.parseDouble(elem[1]);
                    total += rank;
                   
            %>
            <tr>
                <td><%=elem[0]%></td>
                <td><%=elem[1]%></td>
            </tr>
            <%

                }
            %>
        </table>
        <p>Score total: <%=total%></p>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <a href="login.jsp">login</a>
    </body>
</html>

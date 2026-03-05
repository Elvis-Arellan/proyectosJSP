<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show</title>
    </head>
    <body>
        <h1>Show</h1>
        <%
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            int total = 0;
                total = num1 / num2;
            
        %>
        <p>num1: <%= num1%></p>
        <p>num2: <%= num2%></p>
        <p>Division: <%= total%></p>
        
        
    </body>
</html>

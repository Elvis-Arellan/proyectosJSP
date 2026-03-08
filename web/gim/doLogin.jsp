<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("user");
    String peso = request.getParameter("peso");
    String altura = request.getParameter("altura");
    
    session.setAttribute("user", user);
    session.setAttribute("peso", peso);
    session.setAttribute("altura", altura);
    response.sendRedirect("resultado.jsp");
%>
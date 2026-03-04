<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("user");
    session.setAttribute("usuario", user);
    response.sendRedirect("score.jsp");
    return;
%>

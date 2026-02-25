<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    response.sendRedirect("login.jsp?session=logout");
    return;

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("user");
    session.setAttribute("user", user);
    response.sendRedirect("post.jsp");
    return;
%>
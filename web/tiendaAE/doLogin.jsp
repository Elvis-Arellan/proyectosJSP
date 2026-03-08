<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("user");
    session.setAttribute("user", user);

%>

<jsp:forward page="dashboard.jsp">
    <jsp:param name="nombrexd" value="<%= user%>" />
</jsp:forward>

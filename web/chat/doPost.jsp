<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String chat = request.getParameter("chat");
    String name = (String) session.getAttribute("user");
     

    ArrayList<String> mensajes = (ArrayList<String>) application.getAttribute("mensajes");
    

    if (mensajes == null) {
        mensajes = new ArrayList<>();
    }

    if (chat != null && !chat.trim().isEmpty()) {
        mensajes.add("User: "+name.toUpperCase() + ", dice: " + chat);
    }

    application.setAttribute("mensajes", mensajes);

    response.sendRedirect("mensajes.jsp");
    return;
%>
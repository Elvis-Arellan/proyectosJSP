<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String chat = request.getParameter("chat");

    ArrayList<String> mensajes = (ArrayList<String>) application.getAttribute("mensajes");

    if (mensajes == null) {
        mensajes = new ArrayList<>();
    }

    if (chat != null && !chat.trim().isEmpty()) {
        mensajes.add(chat);
    }

    application.setAttribute("mensajes", mensajes);

    response.sendRedirect("mensajes.jsp");
    return;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Necesito un sistema de soporte técnico simple. El usuario hace login, abre un ticket describiendo su problema, 
//y puede ver todos sus tickets anteriores. admin ve todo email/descripcion.

%>
<%    
    String admin = "admin@gmail.com";
    String passAdmin = "admin";
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    if ("admin@gmail.com".equals(email.toLowerCase().trim()) && "admin".equals(password.toLowerCase().trim())) {
        session.setAttribute("email", email);
        response.sendRedirect("admin.jsp");
    }else {
        session.setAttribute("email", email);
        response.sendRedirect("ticket.jsp");
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    String user = request.getParameter("user");
    String password = request.getParameter("password");

    if (user == null || password == null) {
        response.sendRedirect("login.jsp?error1=null");
        return;
    }
    if (user.trim().isEmpty() || password.trim().isEmpty()) {
        response.sendRedirect("login.jsp?error2=empty");
        return;
    }
    
    
    if ("admin".equals(password)) {
        sesion.setAttribute("user", user);
        response.sendRedirect("perfil.jsp?login=success");
        return;
    } else {
        response.sendRedirect("login.jsp?error3=password");
        return;
    }


%>
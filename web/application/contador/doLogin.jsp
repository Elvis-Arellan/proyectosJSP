<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre = request.getParameter("user");
    
    if(nombre == null){
        response.sendRedirect("login.jsp?error1=true");
        return;
    }
    if(nombre.isEmpty()){
        response.sendRedirect("login.jsp?error2=true");
        return;
    }
    
    session.setAttribute("Usuario", nombre);
    response.sendRedirect("contador.jsp");
    return;

%>
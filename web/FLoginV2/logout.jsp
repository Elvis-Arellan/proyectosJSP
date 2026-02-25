<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("user")==null){
        response.sendRedirect("login.jsp?error1=null");
        return;
    }
    sesion.invalidate();
    response.sendRedirect("login.jsp?logOut=true");
%>
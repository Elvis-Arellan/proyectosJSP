<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%
    HttpSession sesion = request.getSession();
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    if(user == null || password == null){
        response.sendRedirect("login.jsp?error=nulls");
        return;
    }
    if(user.trim().isEmpty() || password.trim().isEmpty()){
        response.sendRedirect("login.jsp?error=empty");
        return;
    }
    try {

        if ("admin".equals(password)) {
            sesion.setAttribute("user", user);
            response.sendRedirect("index.jsp?login=succes");
            return;
        } else {
            response.sendRedirect("login.jsp?error=password");
            return;
        }
    } catch (Exception e) {
        out.print("Ingrese los datos correctos");
    }

%>

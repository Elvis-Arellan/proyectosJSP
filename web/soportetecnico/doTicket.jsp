<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String email = (String) session.getAttribute("email");//email
     String mensaje = request.getParameter("txtArea");//descripcion del problema
    
     ArrayList<String[]> descError = (ArrayList<String[]>) application.getAttribute("descError");
     
     if(descError == null){
         descError = new ArrayList<>();
     }
     if(mensaje != null && !mensaje.isEmpty()){
         descError.add(new String[]{email,mensaje});
             }
     application.setAttribute("descError", descError);
     response.sendRedirect("dashboard.jsp");
%>

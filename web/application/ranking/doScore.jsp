<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String score = request.getParameter("score");
    String user = (String) session.getAttribute("usuario");

    ArrayList<String[]> ranking = (ArrayList<String[]>) application.getAttribute("ranking");
    if (ranking == null) {
        ranking = new ArrayList<>();
    }
    if(score!=null || !score.trim().isEmpty()){
        ranking.add(new String[]{user,score});
    }
    application.setAttribute("ranking", ranking);
    response.sendRedirect("showRanking.jsp");
    return;
%>
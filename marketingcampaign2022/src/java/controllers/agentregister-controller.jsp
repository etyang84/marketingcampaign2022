<%-- 
    Document   : agentregister-controller
    Created on : Jan 13, 2022, 6:35:22 PM
    Author     : simonpeter
--%>

<%@page import="beans.agentBean"%>
<%@page import="DAO.agentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<% 
        agentDAO dao = new agentDAO();
        
        agentBean agent = new agentBean();
        
        agent.setAgentID(Integer.parseInt(request.getParameter("agentID")));
        agent.setAgentName(request.getParameter("name"));
        agent.setRegion(request.getParameter("region")));
        
        dao.registerAgent(agent);

    %>
    </body>
</html>

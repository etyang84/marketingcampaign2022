<%-- 
    Document   : login
    Created on : Jan 8, 2022, 12:02:32 PM
    Author     : simonpeter
--%>

<%@page import="beans.agentBean"%>
<%@page import="DAO.agentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>>JSP Page</title>
    </head>
    
    <body>
        <!-- java to handle form data -->
    <% 
        agentDAO dao = new agentDAO();
        
        agentBean agent = new agentBean();
        
        agent.setAgentName(request.getParameter("name"));
        agent.setRegion(request.getParameter("region")));
        
        dao.validateAgent(agent);
    %>           
    </body>
</html>

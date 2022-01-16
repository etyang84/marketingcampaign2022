<%-- 
    Document   : agentlogin
    Created on : Jan 13, 2022, 11:23:23 AM
    Author     : simonpeter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agent Login</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
    <% 
//        agentDAO dao = new agentDAO();
//
//        agentBean agent = new agentBean();
//
//        agent.setAgentID(Integer.parseInt(request.getParameter("agentID")));
//        agent.setAgentName(request.getParameter("agentName"));
//        agent.setRegion(request.getParameter("region"));
//
//        dao.validateAgent(agent);
    %>
    
    <div>
    <!-- register form -->
    <form action="agentLoginServlet" method="post" style="border: 3px solid #f1f1f1;">
        <div style="text-align: center; margin: 24px 0 12px 0;">
            <h2>LOGIN TO UPLOAD FILES FOR REVIEW</h2>
        </div>

        <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
            <div style="background-color:#f1f1f1; padding:30px;"> 
                <label for="agentName"><b>Agent Name</b></label>
                </br>
                <input type="text" placeholder="Enter Agent Name" name="agentName" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                </br>
                </br>
                <label for="region"><b>Region</b></label>
                </br>
                <input type="text" placeholder="Enter Region" name="region" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                </br>
                </br>
                <button type="submit"
                style="
                   border-radius: 20px;
                   background-color: #3285d1;
                   color: white;
                   padding: 14px 20px;
                   margin: auto;
                   border: none;
                   cursor: pointer;
                   width: 50%;">        
                Login</button>
                </br>
                </br>
            </div>
        </div>
    </form>
    </div>
    
    <div class="clear"> </div><br /><br />
    
    <div class="footer"style="position:absolute;bottom:0; width:100%;">
        <div class="wrap">
            <div class="footer-right" style="float:none; text-align: center; ">
                     <p>&copy; 2021 Marketing Campaign. All Rights Reserved | Design by Simon Peter</p>
            </div>
            <div class="clear"> </div>
        </div>
    </div>
    </body>
</html>

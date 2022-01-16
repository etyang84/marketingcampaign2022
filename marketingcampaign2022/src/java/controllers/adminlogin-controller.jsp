<%-- 
    Document   : adminlogin
    Created on : Jan 11, 2022, 10:56:20 AM
    Author     : simonpeter
--%>

<%@page import="beans.adminBean"%>
<%@page import="DAO.adminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP page</title>
    </head>
    <body>
<% 
    adminDAO dao = new adminDAO();

    adminBean admin = new adminBean();

    admin.setAdminName(request.getParameter("adminName"));
    admin.setPassword(request.getParameter("password")));

    dao.validateAdmin(admin);
%>   
    </body>
</html>

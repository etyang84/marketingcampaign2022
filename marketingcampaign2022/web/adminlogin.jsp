<%-- 
    Document   : adminlogin
    Created on : Jan 13, 2022, 7:21:51 PM
    Author     : simonpeter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>    
    <div>
    <!-- register form -->
    <form action="./controllers/adminlogin-controller.jsp" method="post" style="border: 3px solid #f1f1f1;">
        <div style="text-align: center; margin: 24px 0 12px 0;">
            <h2>ADMIN LOGIN</h2>
        </div>

        <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
            <div style="background-color:#f1f1f1; padding:30px;"> 
                <label for="adminName"><b>Admin Name</b></label>
                </br>
                <input type="text" placeholder="Enter Admin Name" name="adminName" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                </br>
                </br>
                <label for="password"><b>Password</b></label>
                </br>
                <input type="password" placeholder="Enter Password" name="password" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
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

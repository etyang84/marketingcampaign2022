<%-- 
    Document   : schedule
    Created on : Jan 8, 2022, 1:03:55 PM
    Author     : simonpeter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div>
            <!-- register form -->
            <form action="#" method="post" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>SCHEDULE MARKETING CAMPAIGN</h2>
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#f1f1f1; padding:30px; "> 
                        <label for="scheduleID"><b>Schedule ID</b></label>
                        </br>
                        <input type="text" placeholder="Enter Schedule ID" name="scheduleID" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <label for="uname"><b>Name</b></label>
                        </br>
                        <input type="text" placeholder="Enter Name" name="uname" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <label for="area"><b>Area of Campaign</b></label>
                        </br>
                        <input type="text" placeholder="Area of Campaign" name="area" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <label for="date"><b>Date of Campaign</b></label>
                        </br>
                        <input type="date" placeholder="Enter Date of Campaign" name="date" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <label for="time"><b>Time of Campaign</b></label>
                        </br>
                        <input type="time" placeholder="Enter Time of Campaign" name="time" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
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
                           width: 45%;
                           float:left;">        
                        Schedule</button>
                        <a href="progress.jsp"><button
                        style="
                           border-radius: 20px;
                           background-color: #3285d1;
                           color: white;
                           padding: 14px 20px;
                           margin: auto;
                           border: none;
                           cursor: pointer;
                           width: 45%;
                           float:right;">        
                                View Progress</button></a>
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

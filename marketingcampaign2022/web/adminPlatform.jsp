<%-- 
    Document   : adminPlatform
    Created on : Jan 11, 2022, 1:13:30 PM
    Author     : simonpeter
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.agentDAO"%>
<%@page import="beans.agentBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Platform</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="assets/css/responsiveslides.css">
        <link rel="stylesheet" href="assets/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/responsiveslides.min.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    </head>
    <body>
        <div class="wrap">
            <h4 style="margin-top:45px; margin-bottom: 25px; color:black; ">Hello Overall Coordinator</h4>
            <div style="margin-top:20px; margin-bottom: 60px; color:black; ">
                <div style=" float: left;">
                    <h3>Your Welcome</h3>
                </div>
                <div style=" float: right;">
                    <h3><a href="#">Logout</a></h3>
                </div>
            </div>
        </div>
        
        <div class="clear"> </div>
        <%-- register agent --%>
        <div>
            <!-- register form -->
            <form action="registerAgentServlet" method="post" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>REGISTER AGENT</h2>
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
                           width: 50%;" value="Register">        
                        Register</button>
                        </br>
                        </br>
                   </div>
               </div>
             </form>
        </div>

        <div class="clear"> </div>
        <%-- table section --%>
        
        <div class="wrap" style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
            <div style="text-align: center; ">
                <div>
                    <h2 style="font-size:25px; color: black; margin-bottom: 10px;">REVIEW SECTION</h2>
                </div>
                <div style="width: 100%;">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
                </div>
            </div>
            
            <table border="1" id="myTable" class="responsive-table">
		<tr>
                    <th>Agent ID</th>
                    <th>Agent Name</th>
                    <th>Region</th>
                    <th>Uploads</th>			
		</tr>
		<%
			List<agentBean> list = new agentDAO().getAgents();

			for (agentBean agent : list) {
		%>
		<tr>
			<td><%=agent.getAgentID()%></td>
			<td><%=agent.getAgentName()%></td>
			<td><%=agent.getRegion()%></td>
			<td></td>
		</tr>

		<%
			}
		%>
            </table>
        </div>
        
        <div class="clear"> </div>
        <%-- Progress section --%>
            

            <div class="wrap" style="">
            <h2 style="text-align: center; margin-top:45px; color:black; font-size:25px; color: black; margin-bottom: 10px; text-transform: uppercase;">For all your progress as regards the ongoing campaigns.</h2>

            <div class="clear"> </div><br /><br />
            <div style="width: 100%; margin-bottom: 30px;">
                <div style="width: 49%; margin-left: 2px; float:left;">
                    <div id="myChart" style="width:100%; max-width:600px; height:500px;"></div>
                </div>    
                <div style="width: 49%; margin-right: 0px; float:right;">
                    <div id="myChart2" style="width:100%; max-width:600px; height:500px;"></div>  
                </div>
            </div>
            </div>
        
        <div class="clear"> </div>
        
        <div class="footer"style=" width:100%;">
              <div class="wrap">
             <div class="footer-right" style="float:none; text-align: center; ">
                     <p>&copy; 2021 Marketing Campaign. All Rights Reserved | Design by Simon Peter</p>
             </div>
             <div class="clear"> </div>
        </div>
        </div>
        
        <script>
            google.charts.load('current',{packages:['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
            // Set Data
            var data = google.visualization.arrayToDataTable([
              ['Regions', 'Work Done'],
              [50,7],[60,8],[70,8],[80,9],[90,9],
              [100,9],[110,10],[120,11],
              [130,14],[140,14],[150,15]
            ]);
            // Set Options
            var options = {
              title: 'Regions vs. Work Done',
              hAxis: {title: 'Regions'},
              vAxis: {title: 'Percentage Work Done'},
              legend: 'none'
            };
            // Draw
            var chart = new google.visualization.LineChart(document.getElementById('myChart'));
            chart.draw(data, options);
            }
        </script>
        
        <script>
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Regions', 'Percentage'],
              ['KAMPALA',55],
              ['MBALE',49],
              ['JINJA',44],
              ['MBARARA',24],
              ['KABALE',49],
              ['GULU',44],
              ['KALANGALA',24],
              ['FORT PORTAL',44],
              ['NTINDA',24],
              ['ARUA',15]
            ]);

            var options = {
              title:'Regions vs. Work Done'
            };

            var chart = new google.visualization.BarChart(document.getElementById('myChart2'));
              chart.draw(data, options);
            }
        </script>
        
        <script>
        function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("myTable");
          tr = table.getElementsByTagName("tr");
          for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
              txtValue = td.textContent || td.innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
              } else {
                tr[i].style.display = "none";
              }
            }       
          }
        }
        </script>
        
    </body>
</html>

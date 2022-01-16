<%-- 
    Document   : progress
    Created on : Jan 8, 2022, 1:31:46 PM
    Author     : simonpeter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Progress</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    </head>
    <body>
    <div class="wrap" style="">
        <h1 style="margin-top:45px; margin-bottom: 10px; color:black; ">For all your progress as regards the ongoing campaigns. </h1>

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
        <div class="clear"> </div><br /><br />
                
        <div class="footer"style="position:absolute;bottom:0; width:100%;">
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

        
    </body>
</html>

<%-- 
    Document   : upload
    Created on : Jan 8, 2022, 11:46:28 AM
    Author     : simonpeter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Upload Files</title>
		<link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<!--start-wrap-->
		   <div class="wrap">
			<div class="blog">
		    		<div class="blog-grid">
		    			<h3 style="margin-top:45px; margin-bottom: 25px; color:black; ">Hello Agent, you can now upload your material for approval by the Overall Coordinator</h3>
		    			
		    			<div class="image group">
				<div class="grid images_3_of_1">
					<img src="assets/images/1.png">
				</div>
				<div class="grid span_2_of_3">
					<p>For upload click the button below. A window will appear where you will select which 
                                        files you are to upload. After selection, click okay and these will be uploaded. 
                                        You will wait for approval from the Overall Coordinator after upload. 
                                        This may take 2 to 3 working days depending on the traffic. 
                                        Thank you for your patience. </p>
                                        <button class="button open-button" onclick="openForm()">Upload</button>
					
                                    <div class="form-popup" id="myForm" style="padding-top: 1px; margin-top: 1px;">
                                        <form action="upload2.jsp" class="form-container">
                                          <h1>Documents approved</h1>
                                          <button type="button" class="btn cancel" onclick="closeForm()">Okay-redirect</button>
                                        </form>
                                    </div>
                                    </div>
                                </div>
		   
		    		</div>
		    		<br />
		    		<div class="clear"> </div>
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
		<!--end-wrap-->
                
        <script>
            function openForm() {
              document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
              document.getElementById("myForm").style.display = "none";
            }
        </script>
	</body>
</html>





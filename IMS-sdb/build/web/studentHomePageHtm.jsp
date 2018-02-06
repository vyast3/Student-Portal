 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Student Home Page </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<style type="text/css">
<!--
.style2 {
	font-size: 16px;
	font-weight: bold;
}
.style3 {color: #D23176}
.style4 {
	font-size: 36px;
	color: #EB8D25;
}
.style5 {font-size: 16px; font-weight: bold; color: #CC0000; }
.style9 {color: #CCFF00}
-->
</style>
</head>
<body>
<form  action="temp1.html" method="get">
<div id="main_container">
<div class="top_illustration"> </div>
	<div id="header">
    <div class="logo style4"> Student Home Page : </div>
    </div>

            <div id="menu_tab">
                    <ul class="menu">
                         <li><a href="studentHomePageHtm.jsp" class="nav_selected"> home </a></li>
                         <li class="divider"></li>
                         <li><a href="loc.html" class="nav">location</a></li>
                         <li class="divider"></li>
                         <li><a href="projects.html" class="nav"></a></li>
                         <li class="divider"></li>
                         <li><a href="syll.html" class="nav">Syllabus</a></li>
                         <li class="divider"></li>
                         <li><a href="logout.jsp" class="nav">Logout</a></li>
 <li class="divider"></li>
                         <li><a href="contact.jsp" class="nav">Contact Us</a></li>

                    </ul>
            </div>


    <div id="main_content">

    	<div id="middle_banner">
        	<div class="middle_banner_content">
          </div>
        </div>


        <div id="left_content">
        <h1>For Student:</h1>
        <p class="style2"><a href="studentShowjsp.jsp" class="style3">See Your Accout:</a>  </p>
        <p class="style2">&nbsp;</p>
        <p class="style2"><a href="bookSearchHtm.jsp">Search Book In Library:</a></p>

        <p class="style5">&nbsp;</p>
        <p class="style2"><span class="style9"><a href="libraryShowAccount.jsp?id2=<%=(String)session.getAttribute("login_id")%>">See your Library Account:</a></span></p>
        <p class="style2">&nbsp;</p>
        <p class="style2">&nbsp;</p>
        <p>&nbsp;        </p>


        <h1>Our Services</h1>
        <p class="clear">
        <img src="images/icon1.png" alt="" title="" class="left_img" width="48" height="48" />
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation        </p>

        <p class="clear">&nbsp;        </p>


        <p class="clear">
        <img src="images/icon3.png" alt="" title="" class="left_img" width="48" height="48" />
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation        </p>
        </div>

        <div id="right_content">
        	<h1>Latest News</h1>
         <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
        </p>

          <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
        </p>

          <p class="news">&nbsp;

        </p>


        </div>


    <div id="footer"><br />
      </div>
    </div>

</div>
</form>
</body>
</html>
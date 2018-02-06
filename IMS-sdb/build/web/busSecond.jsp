 <%@ page import = "java.sql.*" %>
 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Home Login page:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
<form  action="login.jsp" method="get"  name="LoginForm" >

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>




    <div id="main_content">

    	<div id="middle_banner">
        	<div class="middle_banner_content">
       			 <img src="header_name.jpg" alt="" title="" width="650" height="150" />
            </div>
        </div>

  <div id="menu_tab">
                   <marquee> <h1>ENTERPRISE RESOURCE PLANNING</h1></marquee>
                <%
String bno = request.getParameter("bno");
 Connection con1=mypack.MyCon.getConnection();
 java.sql.Statement st1 = con1.createStatement();
ResultSet rs1 = null;
rs1=st1.executeQuery("select * from bus where bno='"+bno+"'");
if(rs1.next())
{

%>
<div>
    <table  bgcolor="#CCFFCC" border="0" cellpadding="3" cellspacing="4" style="border-collapse: collapse" bordercolor="#115518" >
        <tr>
            <td><font size="4"> BusRoot:</font> </td>
            <td><font size="5"><%=rs1.getString(2)%></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>

    </table>
    </div>

            </div>
             <div>
                
            </div>
        <div id="left_content">






    <%
    }

    else{
    %>
              No data Found.....
    <%
    }
    %>





<div>

<br>
<br>
<br>
<br>

    <p>
       We have developed the self-development training modules especially for college teachers and have implemented this program for the past ten years in over fifty colleges throughout India. The effectiveness of the instruments has been validated through testing and evaluation by teachers from 25 colleges   </p>


        <h1>Our Services</h1>
        <p class="clear">

       K.C.B. Technical Academy, Indore (KCBTA) is an institution set up by Shrinivas Education Society, which offer 4-Year BE, 3-Year MCA and 2-Year MBA Degree programmes. </p>

        <p class="clear">
        <img src="images/icon2.png" alt="" title="" class="left_img" width="48" height="48" />
       Find out how individuals who hold copyright to their works can contribute papers, reports. </p>


        <p class="clear">
        <img src="images/icon3.png" alt="" title="" class="left_img" width="48" height="48" />
       Bibliographic records of education literature, plus a growing collection of full text  </p>

        </div>







</div>



        <div id="right_content">
        	<div class="members_login">
            <h1> </h1>

            
             
             

         <h1>Latest News</h1>
         <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
       The workshop will be held at the Guest House on NMU campus, where accommodations will be arranged. </p>

          <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
          This is our second workshop this year in Self development for teachers. It will be held from may 20 to 22, 2011</p>
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
        <P>National Conference ECOMM-11 by Bansal Group @ Indore</P>



        </div>





</form>
</body>
</html>





<%@ page import = "java.sql.*" %>

<%@include  file="check.jsp" %>
<%@include  file="chkIMS.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Edit Student:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>

 

<% 
String   enr  = request.getParameter("enr");  
String   cou   = request.getParameter("cou");  
String   dep  = request.getParameter("dep");  
String   nam  = request.getParameter("nam");  
String   add  = request.getParameter("add");  
String   cit  = request.getParameter("cit");  
String   gen  = request.getParameter("gen");  
String  pas = request.getParameter("pas");    
String   mob  = request.getParameter("mob");  
 Connection con1=mypack.MyCon.getConnection();

PreparedStatement st1=con1.prepareStatement("insert into hod values(?,?,?,?,?,?,?,?,?,?)");
st1.setString(1,enr);
st1.setString(2,cou);
st1.setString(3,dep);
st1.setString(4,nam);
st1.setString(5,add);
st1.setString(6,cit);
st1.setString(7,gen);
st1.setString(8,pas);
st1.setString(9,request.getParameter("date")+"/"+request.getParameter("month")+"/"+request.getParameter("year"));
st1.setString(10,mob);
st1.executeUpdate();

        

%>


 <p>
       We have developed the self-development training modules especially for college teachers and have implemented this program for the past ten years in over fifty colleges throughout India. The effectiveness of the instruments has been validated through testing and evaluation by teachers from 25 colleges   </p>


        <h1>Our Services</h1>
        <p class="clear">

       sdbct is an institution set up by Shrinivas Education Society, which offer 4-Year BE, 3-Year MCA and 2-Year MBA Degree programmes. </p>

        <p class="clear">
        <img src="images/icon2.png" alt="" title="" class="left_img" width="48" height="48" />
       Find out how individuals who hold copyright to their works can contribute papers, reports. </p>


        <p class="clear">
        <img src="images/icon3.png" alt="" title="" class="left_img" width="48" height="48" />
       Bibliographic records of education literature, plus a growing collection of full text  </p>
<div>

<h1 ><b>New HOD  Record Created.......</b></h1>
</div>

     </body>
     </html>
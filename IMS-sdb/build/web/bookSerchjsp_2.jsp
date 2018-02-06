<%@ page import = "java.sql.*" %>

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
    
    <%

int temp=0;
String id = request.getParameter("txtSearch");


Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
 Statement st=con.createStatement();
ResultSet rs = null;

String s = "select * from lib where book_id = '"+id+"' or title = '"+id+"' or author ='"+id+"'";
rs  = st.executeQuery(s);

while(rs.next())
 {

    %>

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

            <div id="menu_tab">
                    <ul class="menu">
                         <li><a href="newHomeLogin1.jsp" class="nav_selected"> home </a></li>
                         <li class="divider"></li>
                         <li><a href="syll.html" class="nav"> Syllabus</a></li>
                         <li class="divider"></li>
                         <li><a href="loc.html" class="nav"> Location </a></li>
                         <li class="divider"></li>
                         <li><a href="contact.jsp" class="nav">contact us</a></li>
                         <li class="divider"></li>
                         <li><a href="contact.html" class="nav"> LogOut </a></li>

                    </ul>
            </div>


    <div id="main_content">

    	<div id="middle_banner">
        	<div class="middle_banner_content">
       			 <img src="P070411_1147.jpg" alt="" title="" width="650" height="150" />
            </div>
        </div>

    </div>










    <div>
        <form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="587" border="1" align="center">
    <tr bgcolor="#E7D296">
      <th  colspan="4"scope="row">BOOK AVAILABLE WITH QUANTITY: </th>

    </tr>
    <tr bgcolor="#E7D296">
      <th width="176" scope="row">BOOK ID </th>
      <td width="102">TITLE</td>
      <td width="155">AUTHOR</td>
      <td width="126">QUANTY </td>
    </tr>
    <tr bgcolor="#DFF8BE">
      <th height="47" scope="row">&nbsp;<%=rs.getString(1)%></th>
      <td>&nbsp;<%=rs.getString(2)%></td>
      <td>&nbsp;<%=rs.getString(3)%></td>
      <td>&nbsp;<%=rs.getString(4)%></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>


    </div>




    <%


 }
%>

    </div>

    </body>
</html>
 <%@page import="java.sql.*" %>

 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Spider Design Template</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>


            <%!  ResultSet rs; %>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");

 java.sql.Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs = null;
            rs = st.executeQuery("select * from hod");

%>
<form  action="editHodjsp.jsp" method="get">
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
       			 <img src="logo2.jpg" alt="" title="" width="650" height="150" />
            </div>
        </div>





<div>

     <table width="50%" border="2" cellspacing="1" align="center" class="tablegrid">
            <tr>
              <th  colspan="12" bgcolor="#E8F4BD"> Student Information: </th>
            </tr>
            <tr>
              <td width="16%" bgcolor="#C8F2C6"> delete </td>
              <td width="16%" bgcolor="#C8F2C6"> Edit </td>
              <td width="16%" bgcolor="#C8F2C6"> id No: </td>
              <td width="17%" bgcolor="#C8F2C6"> Name: </td>
              <td width="14%" bgcolor="#C8F2C6"> Address: </td>
              <td width="18%" bgcolor="#C8F2C6"> City:</td>
              <td width="17%" bgcolor="#C8F2C6"> gender: </td>
              <td width="18%" bgcolor="#C8F2C6">password:</td>
              <td width="18%" bgcolor="#C8F2C6">email:</td>
              <td width="18%" bgcolor="#C8F2C6">mob:</td>
              <td width="18%" bgcolor="#C8F2C6">joining:</td>
              <td width="18%" bgcolor="#C8F2C6">dept:</td>
              
            </tr>
            <%
            while (rs.next()) {


             // session.setAttribute("delId",rs.getString(1));

                %>
          <tr>
                    <td width="16%"><a href="deleteHodHtm.jsp?id1=<%=rs.getString(1)%>">delete</a></td>

                    <td width="16%"><a href="editHodHtm.jsp?id=<%=rs.getString(1)%>">Edit</a></td>

                   <td>&nbsp;   ...... </td>

                    <td>&nbsp;   <%=rs.getString(2)%> </td>

                    <td>&nbsp;   <%=rs.getString(3)%>  </td>

                    <td>&nbsp;   <%=rs.getString(4)%>  </td>

                    <td>&nbsp;     <%=rs.getString(5)%></td>

                    <td>&nbsp;   <%=rs.getString(6)%> </td>

                     <td>&nbsp;   <%=rs.getString(7)%> </td>

                      <td>&nbsp;   <%=rs.getString(8)%> </td>

                       <td>&nbsp;   <%=rs.getString(9)%> </td>

                        <td>&nbsp;   <%=rs.getString(10)%> </td>
                </tr>

            <%
            }
                %>
          </table>

</div>






    </div>

</div>
</form>
</body>
</html>
 <%@page import=" java. sql.*" %>

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


       <%!java.sql.ResultSet rs;%>
    <%

               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
 Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                 rs = null;

                String r = "select * from hod where hod_id='" + request.getParameter("id")+"'";
                rs = st.executeQuery(r);
                rs.next();




    %>

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

            <div id="menu_tab">
                   
            </div>


   <div>
<%=rs.getString(1)%>

       <form id="form1" name="form1" method="post" action="editHodjsp.jsp">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="556" border="1" align="center">
    <tr>
      <th colspan="2" scope="row">Update Hod Form: </th>

    </tr>
    <tr>
      <th width="115" scope="row"><div align="right">ID: </div></th>
      <td width="203"><input type="text" value="<%=rs.getString(1)%> " name="enr" /></td>
    </tr>
    <tr>
      <th scope="row"> name</th>
      <td><input type="text" value="<%=rs.getString(2)%> " name="cou" /></td>
    </tr>
    <tr>
      <th scope="row">address</th>
      <td><input type="text" value="<%=rs.getString(3)%> " name="dep" /></td>
    </tr>
    <tr>
      <th scope="row">city:</th>
      <td><input type="text"  value="<%=rs.getString(4)%> " name="nam" /></td>
    </tr>
    <tr>
      <th scope="row">Gender:</th>
      <td><input type="text"  value="<%=rs.getString(5)%> " name="add" /></td>
    </tr>
    <tr>
      <th scope="row">pass:</th>
      <td><input type="text"  value="<%=rs.getString(6)%> "name="cit" /></td>
    </tr>
    <tr>
      <th scope="row">email:</th>
      <td><input type="text"  value="<%=rs.getString(7)%> "name="gen" /></td>
    </tr>
    <tr>
      <th scope="row">joining:</th>
      <td><input type="text"  value="<%=rs.getString(8)%> " name="pas" /></td>
    </tr>
    <tr>
      <th scope="row">mobile: </th>
      <td><input type="text"  value="<%=rs.getString(9)%> " name="doa" /></td>
    </tr>
    <tr>
      <th scope="row">Dept:</th>
      <td><input type="text"  value="<%=rs.getString(10)%> " name="mob" /></td>
    </tr>
    <tr>
      <th  colspan="2"scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>


   </div>



    </div>



</body>
</html>
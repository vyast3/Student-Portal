
<%@page import="java.sql.*" %>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="101%" id="AutoNumber3" height="66">
  <tr>
    <td width="17%" height="66" bgcolor="#99CCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="login.html">HOME</a></td>
    <td width="21%" height="66" bgcolor="#9999FF">&nbsp; &nbsp; &nbsp; &nbsp;
    <a href="syll.html">SYLLABUS</a></td>
    <td width="21%" height="66" bgcolor="#33CCCC">&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="loc.html">LOCATION</a></td>
    <td width="20%" height="66" bgcolor="#D7FFC4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <a href="bus.html">BUS</a>
    </td>
    <td width="53%" height="66" bgcolor="#66FFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="lib.html">LIBRARY</a></td>
  </tr>
</table>

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
            rs = st.executeQuery("select * from Student");

%>



<html>
    <head>
        <link href="StyleSheet/my.css" rel="StyleSheet" type="Text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>  show All Student  </title>

        <link href="" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
body {
	background-color: #E5E5E5;
}
-->
</style></head>

<body>
        <form id="form1" name="form1" method="post" action="">
          <table width="50%" border="2" cellspacing="1" align="left" class="tablegrid">
            <tr>
              <th  colspan="12" bgcolor="#E8F4BD"> Student Information: </th>
            </tr>
            <tr>
              <td width="16%" bgcolor="#C8F2C6"> delete </td>
              <td width="16%" bgcolor="#C8F2C6"> Edit </td>
              <td width="16%" bgcolor="#C8F2C6"> Enrollment No: </td>
              <td width="17%" bgcolor="#C8F2C6"> Cource: </td>
              <td width="14%" bgcolor="#C8F2C6"> Dept: </td>
              <td width="18%" bgcolor="#C8F2C6"> Name:</td>
              <td width="17%" bgcolor="#C8F2C6"> Address: </td>
              <td width="18%" bgcolor="#C8F2C6">city:</td>
              <td width="18%" bgcolor="#C8F2C6">Gender:</td>
              <td width="18%" bgcolor="#C8F2C6">Password:</td>
              <td width="18%" bgcolor="#C8F2C6">Dob:</td>
              <td width="18%" bgcolor="#C8F2C6">Mob:</td>
            </tr>
            <%
            while (rs.next()) {


             // session.setAttribute("delId",rs.getString(1));

                %>
          <tr>
                    <td width="16%"><a href="deleteStudentHtm.jsp?id1=<%=rs.getString(1)%>">delete</a></td>

                    <td width="16%"><a href="editAddProductHtm.jsp?id=<%=rs.getString(1)%>">Edit</a></td>

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
          <p>&nbsp; </p>
        </form>
</body>


</html>


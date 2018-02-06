
<%@ page import = "java.sql.*" %>
<%@ include file="header.html" %>
<% 


String tid = request.getParameter("td");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");

 java.sql.Statement st = con.createStatement();
ResultSet rs = null;
rs=st.executeQuery("select * from teacher where teach_id='"+tid+"'");
if(rs.next())
{
%>
<h2>WELCOME :</h2><h2><%=tid%></h2>
<table bgcolor="#CCFFCC"   border="0" cellpadding="4" cellspacing="5" style="border-collapse: collapse" bordercolor="#115518" >
   <tr>
        <td> Welcome :</td>
        <td><%=tid%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; teacher id is </font>:</td>
        <td><font size="5"><%=rs.getString(1)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name :</font></td>
        <td><font size="5"><%=rs.getString(2)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address  :</font></td>
        <td><font size="5"><%=rs.getString(3)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City  :</font></td>
        <td><font size="5"><%=rs.getString(4)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender  :</font></td>
        <td><font size="5"><%=rs.getString(5)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password  :</font></td>
        <td><font size="5"><%=rs.getString(6)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E- mail id: </font></td>
        <td><font size="5"><%=rs.getString(7)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile   :</td>
        <td><font size="5"><%=rs.getString(8)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date of  Joining </font></td>
        <td><font size="5"><%=rs.getString(9)%></td>
 
</table>
<%
}
else {
    
%>
   <jsp:forward page="LoginError.html"></jsp:forward>
   <%
   }
   %>
   <%@ include file="footer.html"%>

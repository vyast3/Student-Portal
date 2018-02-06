<%@ page import = "java.sql.*" %>
<%@ include file="header.html" %>
<% 


String enroll_no = request.getParameter("txtnm");  
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
 Statement st=con.createStatement();
ResultSet rs = null;
rs=st.executeQuery("select * from student where enroll_no='"+enroll_no+"'");
if(rs.next())
{
%>
<h2>WELCOME :</h2><h2><%=enroll_no%></h2>
<table bgcolor="#CCFFCC"  border="0" cellpadding="3" cellspacing="4" style="border-collapse: collapse" bordercolor="#115518" >
    <tr>
        <td> <font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enrollno </font></td>
        <td><font size="5"><%=rs.getString(1)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Cource</font></td>
        <td><font size="5"><%=rs.getString(2)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Department</font></td>
        <td><font size="5"><%=rs.getString(3)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your Name</font></td>
        <td><font size="5"><%=rs.getString(4)%></td>
    </tr>
    <tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home Address</font></td>
        <td><font size="5"><%=rs.getString(5)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City</font></td>
        <td><font size="5"><%=rs.getString(6)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender</font></td>
        <td><font size="5"><%=rs.getString(7)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</font></td>
        <td><font size="5"><%=rs.getString(8)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date of Admission</font></td>
        <td><font size="5"><%=rs.getString(9)%></td>
    </tr><tr>
        <td><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile no</font></td>
        <td><font size="5"><%=rs.getString(10)%></td>
    </tr>
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
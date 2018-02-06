
<%@ page import = "java.sql.*" %>

<% 
String t1= request.getParameter("enr");  
String t2= request.getParameter("bid");  
String t3= request.getParameter("doi");  
String t4= request.getParameter("dor");  
String t5= request.getParameter("fin");  

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
PreparedStatement st=con.prepareStatement("insert into lib_tx values(?,?,?,?,?)");
st.setString(1,t1);
st.setString(2,t2);
st.setString(3,t3);
st.setString(4,t4);
st.setString(5,t5);
st.executeUpdate();
%>
<h4>Record saved</h4>
<%@ include file="footer.html"%>  
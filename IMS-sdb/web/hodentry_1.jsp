
<%@ page import = "java.sql.*" %>

<% 
String   enr  = request.getParameter("enr");  
String   cou   = request.getParameter("cou");  
String   dep  = request.getParameter("dep");  
String   nam  = request.getParameter("nam");  
String   add  = request.getParameter("add");  
String   cit  = request.getParameter("cit");  
String   gen  = request.getParameter("gen");  
String  pas = request.getParameter("pas");  
String   doa  = request.getParameter("doa");  
String   mob  = request.getParameter("mob");  
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");

PreparedStatement st=con.prepareStatement("insert into hod values(?,?,?,?,?,?,?,?,?,?)");
st.setString(1,enr);
st.setString(2,cou);
st.setString(3,dep);
st.setString(4,nam);
st.setString(5,add);
st.setString(6,cit);
st.setString(7,gen);
st.setString(8,pas);
st.setString(9,doa);
st.setString(10,mob);
st.executeUpdate();

        

%>
<h5>Record saved</h5>


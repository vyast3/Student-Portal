 <%@ page import = "java.sql.*" %>

<%
String   enr  = request.getParameter("enr");
%>


<%=enr%>

<%
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




//PreparedStatement st=con.prepareStatement(("update hod set name=? ,address=?,city=? ,gender=?,password=?,email=?,mob=?,d_o_jo=?,dept=?  where enroll_no='"+enr+"'"));
PreparedStatement st=con.prepareStatement(("update hod set name=?, address=?,city=? ,gender=?,password=?,email=?,mob=?,d_o_jo=?,dept=?  where hod_id='"+enr+"'"));

st.setString(1,cou);

st.setString(2,dep);
st.setString(3,nam);
st.setString(4,add);
st.setString(5,cit);
st.setString(6,gen);
st.setString(7,pas);
st.setString(8,doa);
st.setString(9,mob);

st.executeUpdate();



%>
<%=enr%>
<h5>Record saved</h5>
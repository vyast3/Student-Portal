 <%@ page import = "java.sql.*" %>

<%
String   enr  = request.getParameter("txtId");
String   cou   = request.getParameter("txtName");
String   dep  = request.getParameter("txtMob");
String   nam  = request.getParameter("txtAddress");
String   add  = request.getParameter("txtPass");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");

PreparedStatement st=con.prepareStatement("insert into subAdmin values(?,?,?,?,?)");
st.setString(1,enr);
st.setString(2,cou);
st.setString(3,dep);
st.setString(4,nam);
st.setString(5,add);

st.executeUpdate();



%>
<%@include  file="htmSubAdmin.jsp" %>
<h1> Record has Saved..........</h1>

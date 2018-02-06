 <%@ page import = "java.sql.*" %>

<%
String   id  = request.getParameter("txtId");
String   enr  = request.getParameter("txtEnroll");
String   name  = request.getParameter("txtName");
  String  bkid  = request.getParameter("txtBkid");
  String  Bkname = request.getParameter("txtBkname");
String   bkissue   = request.getParameter("txtBkissue");
String   bkreturn  = request.getParameter("txtBookReturn");
  String   fine  = request.getParameter("txtFine");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
Connection con1 = DriverManager.getConnection( database ,"","");
Statement st1=con1.createStatement();
   // ResultSet  rs = null;
            String r = "delete from  lib  where book_id='"+bkid+"'";
             st1.executeUpdate(r);

PreparedStatement st=con.prepareStatement("insert into libTx values(?,?,?,?,?,?,?,? )");
st.setString(1,id);
st.setString(2,enr);
st.setString(3,name);
 st.setString(4,bkid );
 st.setString(5, Bkname);
 st.setString(6,bkissue );
 st.setString(7, bkreturn);
 st.setString(8, fine);

 
st.executeUpdate();



%>





<h1>Record Has Saved.........</h1>
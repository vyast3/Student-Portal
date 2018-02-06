  <%@ page import = "java.sql.*" %>

<%
String   id  = request.getParameter("txtId");
String   title   = request.getParameter("txtTitle");
String   author  = request.getParameter("txtAuthor");
  String   strqty  = request.getParameter("txtQty");
   int qty=Integer.parseInt(strqty);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");

PreparedStatement st=con.prepareStatement("insert into lib values(?,?,?,? )");
st.setString(1,id);
st.setString(2,title);
st.setString(3,author);
st.setInt(4,qty);

st.executeUpdate();

/*ResultSet rs = null;

String s = "select * from lib ";
rs  = st.executeQuery(s);

rs.next();
int q=rs.getInt(4);*/

%>
 




<%@include  file="htmLibraryNew_1.jsp" %>

<h1>Record Has Saved.........</h1>
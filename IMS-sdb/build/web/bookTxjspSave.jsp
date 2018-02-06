  <%@ page import = "java.sql.*" %>

<%
String   id  = request.getParameter("txtId");
String   title   = request.getParameter("txtTitle");
String   author  = request.getParameter("txtAuthor");
  String   strqty  = request.getParameter("txtQty");
   int qty=Integer.parseInt(strqty);
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
 Connection con=mypack.MyCon.getConnection();

PreparedStatement st=con.prepareStatement("insert into lib values(?,?,?,? )");
st.setString(1,id);
st.setString(2,title);
st.setString(3,author);
st.setInt(4,qty);

st.executeUpdate();

%>
 




<%@include  file="htmLibraryNew_1.jsp" %>

<h1>Record Has Saved.........</h1>
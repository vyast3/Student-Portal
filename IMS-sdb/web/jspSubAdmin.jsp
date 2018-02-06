 <%@ page import = "java.sql.*" %>

<%
String   enr  = request.getParameter("txtId");
String   cou   = request.getParameter("txtName");
String   dep  = request.getParameter("txtMob");
String   nam  = request.getParameter("txtAddress");
String   add  = request.getParameter("txtPass");

 Connection con=mypack.MyCon.getConnection();

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
<a href="newHomeLogin1.jsp"><h2>Click here to Login As a SubAdmin..</h2></a>

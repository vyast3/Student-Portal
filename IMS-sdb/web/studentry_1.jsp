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
 // now we can get the connection from the DriverManager
Connection con = mypack.MyCon.getConnection();

PreparedStatement st=con.prepareStatement(("update student set cource=?,dept=? ,name=?,address=? ,city=?,gen=?,password=?,d_o_ad=?,mob=? where enroll_no='"+enr+"'"));
//st.setString(1,cou);
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


<h5>Record saved</h5>
<a href="htmSubAdmin_Aft_sign_in.jsp"><h2> Back</h2></a>


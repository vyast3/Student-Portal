
<%@ page import = "java.sql.*" %>

<% 
String   tid  = request.getParameter("tid");  
String   nam   = request.getParameter("nam");  
String   add  = request.getParameter("add");  
String   cit  = request.getParameter("cit");  
String   gen  = request.getParameter("gen");  
String  pas = request.getParameter("pas");  
String  eid  = request.getParameter("eid");  
String  doj = request.getParameter("doj");  
String  mob= request.getParameter("mob");  
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:Institute");
PreparedStatement st=con.prepareStatement("insert into teacher values(?,?,?,?,?,?,?,?,?)");
st.setString(1,tid);
st.setString(2,nam);
st.setString(3,add);
st.setString(4,cit);
st.setString(5,gen);
st.setString(6,pas);
st.setString(7,eid);
st.setString(8,doj);
st.setString(9,mob);
st.executeUpdate();

        

%>
<h3>Record saved</h3>
<h4><a href="teacherEntry.html" >BACK</a></h4>
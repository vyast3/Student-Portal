  <%@ page import = "java.sql.*" %>

<%
String   textfield1  = request.getParameter("textfield1");
String   textfield2   = request.getParameter("textfield2");
String   textfield3  = request.getParameter("textfield3");
  String   textfield4  = request.getParameter("textfield4");
  String   textfield5  = request.getParameter("textfield5");
String   textfield6   = request.getParameter("textfield6");
String   textfield7  = request.getParameter("textfield7");
  String   textfield8  = request.getParameter("textfield8");
  String   textfield9  = request.getParameter("textfield9");
String   textfield10   = request.getParameter("textfield10");
String   textfield11  = request.getParameter("textfield11");


  Connection con=mypack.MyCon.getConnection();

PreparedStatement st=con.prepareStatement("insert into walkins values(?,?,?,?,?,?,?,?,?,?,?)");
 st.setString(1,textfield1);
  st.setString(2,textfield2);
   st.setString(3,textfield3);
    st.setString(4,textfield4);
     st.setString(5,textfield5);
      st.setString(6,textfield6);
       st.setString(7,textfield7);
        st.setString(8,textfield8);
         st.setString(9,textfield9);
          st.setString(10,textfield10);
           st.setString(11,textfield11);

st.executeUpdate();

%>





<%@include  file="wallinEntryHtm.jsp" %>

<h1>Record Has Saved.........</h1>
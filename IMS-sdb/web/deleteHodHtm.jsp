 <%@page  import=" java.sql.*" %>
<%!java.sql.ResultSet rs;int i;String s;%>


<%

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
String filename = "D:/project-IMS/IMS/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
Connection con = DriverManager.getConnection( database ,"","");
 Statement st=con.createStatement(); rs = null;
           // s = (String) session.getAttribute("delId");



               String r = "delete from  hod  where hod_id='"+request.getParameter("id1")+"'";
                int i = st.executeUpdate(r);
                if (i > 0) {
                  out.println("<h1>Record Deleted Successfully</h1><br><a href=seeAllHod.jsp>Delete more records</a>");
                //   %><%
  //                  return;
              }






%>



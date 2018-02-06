<%@ page import = "java.sql.*" %>
<% 

int temp=0;
String login_id = request.getParameter("login_id");  
String pass = request.getParameter("pass");

 Connection con =mypack.MyCon.getConnection();
 Statement st=con.createStatement();
ResultSet rs = null;

String s = "select * from student where enroll_no = '"+login_id+"' and password = '"+pass+"'";
rs  = st.executeQuery(s);

if(rs.next())
 {
      con.close();
      temp =1;
      session.setAttribute("login_id", login_id);
      response.sendRedirect("studentShowjsp.jsp");
 }

 

if(temp==0) 
 {
     String t = "select * from hod where hod_id= '"+login_id+"' and password = '"+pass+"'";
     rs  = st.executeQuery(t);

     if(rs.next())
       { 
          con.close();
          temp=1;
          session.setAttribute("login_id", login_id);
          response.sendRedirect("hodShowSinglejsp.jsp");
       }
 }

 

if(temp==0)
 {
 String t = "select * from admin where id= '"+login_id+"' and password = '"+pass+"'";
     rs  = st.executeQuery(t);

     if(rs.next())
       {
          con.close();
          temp=1;
          session.setAttribute("login_id", login_id);
          response.sendRedirect("htmAdmin.jsp");
       }
 }

if(temp==0)
 {
 String t = "select * from subAdmin where id= '"+login_id+"' and password = '"+pass+"'";
     rs  = st.executeQuery(t);

     if(rs.next())
       {
          con.close();
          temp=1;

          session.setAttribute("login_id", login_id);
          response.sendRedirect("htmSubAdmin_Aft_sign_in.jsp");
       }
 }

if(temp==0)
 {
    con.close();
    response.sendRedirect("loginError.jsp");
 }


%>
<%@page  import="java.sql.*" %>
<%

        String ul = (String) session.getAttribute("login_id");
        Connection con2=mypack.MyCon.getConnection();
        Statement st2=con2.createStatement();
        ResultSet rs2;
        int temp=0;
        String sql="select * from subAdmin where id='"+ul+"'";
        rs2= st2.executeQuery(sql);
        if(rs2.next())
        {
           %>

           <%@include  file="headerMenuForSubAdmin.jsp" %>

           <%
           temp=1;

        }

        if(temp==0)
        {

             String sql1="select * from student where enroll_no='"+ul+"'";
            rs2= st2.executeQuery(sql1);

            if(rs2.next())
            {
           %>

                        <%@include  file="menuHeaderForStudent.jsp" %>

           <%
                         temp=1;

            }


        }


           if(temp==0)
        {

             String sql2="select * from hod where hod_id='"+ul+"'";
            rs2= st2.executeQuery(sql2);

            if(rs2.next())
            {
           %>

                        <%@include  file="headerMenuForHOD.jsp" %>

           <%
                         temp=1;

            }


        }



        if(temp==0)
        {

             String sql2="select * from admin where id='"+ul+"'";
            rs2= st2.executeQuery(sql2);

            if(rs2.next())
            {
           %>

                        <%@include  file="HeaderForAdmin.jsp" %>

           <%
                         temp=1;

            }


        }








     //   if(ul==null) {
      ////      response.sendRedirect("userlogin.jsp"); return;
     //   }
%>
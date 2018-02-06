<%@page import="java.sql.*" %>
<%@include  file="check.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>SeeAllStudent:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>


            <%!  ResultSet rs; %>
<%
 Connection con = mypack.MyCon.getConnection();

 java.sql.Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs = null;
            String id=(String)session.getAttribute("login_id");
            rs = st.executeQuery("select * from subAdmin where enroll_no='"+id+"'");

%>
<form  action="login.jsp" method="get">
<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>



    <div id="main_content">

    	<div id="middle_banner">
        	<div class="middle_banner_content">
       			 <img src="logo2.jpg" alt="" title="" width="650" height="150" />
            </div>
        </div>





<div>

     <table width="50%" border="2" cellspacing="1" align="center" class="tablegrid">
            <tr>
              <th  colspan="12" bgcolor="#E8F4BD"> Student Information: </th>
            </tr>
            <tr>

              <td width="16%" bgcolor="#C8F2C6"> Id: </td>
              <td width="17%" bgcolor="#C8F2C6"> Name: </td>
              <td width="14%" bgcolor="#C8F2C6"> Mobile: </td>
              <td width="18%" bgcolor="#C8F2C6"> Address:</td>
              <td width="17%" bgcolor="#C8F2C6"> Password: </td>

            </tr>
            <%
            while (rs.next()) {


             // session.setAttribute("delId",rs.getString(1));

                %>
          <tr>


                   <td>&nbsp;  <%=rs.getString(1)%> </td>

                    <td>&nbsp;   <%=rs.getString(2)%> </td>

                    <td>&nbsp;   <%=rs.getString(3)%>  </td>

                    <td>&nbsp;   <%=rs.getString(4)%>  </td>

                    <td>&nbsp;     <%=rs.getString(5)%></td>


                </tr>

            <%
            }
                %>
          </table>

</div>






    </div>

</div>
</form>
</body>
</html>
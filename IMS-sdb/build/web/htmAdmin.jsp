
<%@page  import="java.sql.*;" %>

 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title> Admin Registration </title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>


  <div id="menu_tab">
                   <marquee> <h1>AdminRegistration:</h1></marquee>
            </div>



    </div>

  

<div>

    <%!  ResultSet rs; %>
<%

Connection con = mypack.MyCon.getConnection();

 java.sql.Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs = null;
            rs = st.executeQuery("select * from subAdmin");

%>

            <form id="form1" name="form1" method="post" action="">
          <table width="70%" border="2" cellspacing="1" align="center" class="tablegrid">
            <tr>
              <th  colspan="6" bgcolor="#E8F4BD"> Sub Administrator Information: </th>
            </tr>
            <tr>
              <td width="16%" bgcolor="#C8F2C6"> delete </td>

              <td width="16%" bgcolor="#C8F2C6"> Id </td>
              <td width="17%" bgcolor="#C8F2C6"> name </td>
              <td width="14%" bgcolor="#C8F2C6"> Mobile: </td>
              <td width="18%" bgcolor="#C8F2C6"> Address:</td>
              <td width="17%" bgcolor="#C8F2C6"> Password: </td>

            </tr>
            <%
            while (rs.next()) {


             // session.setAttribute("delId",rs.getString(1));

                %>
          <tr>
                    <td width="16%"><a href="delete_sub_Admin.jsp?id1=<%=rs.getString(1)%>">delete</a></td>

                   

                   <td>&nbsp;   ...... </td>

                    <td>&nbsp;   <%=rs.getString(2)%> </td>

                    <td>&nbsp;   <%=rs.getString(3)%>  </td>

                    <td>&nbsp;   <%=rs.getString(4)%>  </td>

                    <td>&nbsp;     <%=rs.getString(5)%></td>


                </tr>

            <%
            }
                %>
          </table>

        </form>


</div>

 

    </div>




     

  <div align="center"> <a href="htmSubAdmin.jsp" class="nav_selected"> <h1>Click here To Create Sub Admin......And Login as subAdmin</h1> </a></div>
<div>
<p>
 
</p>
</div>


</body>


</html>


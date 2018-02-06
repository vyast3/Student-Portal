<%@page import="java.sql.*" %>
 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
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


            <%!  ResultSet rs1; %>
<%

Connection con1 =  mypack.MyCon.getConnection();

 java.sql.Statement st1 = con1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs1 = null;
            rs1 = st1.executeQuery("select * from atendence1");

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
       			 <img src="P070411_1147.jpg" alt="" title="" width="650" height="150" />
            </div>
        </div>





<div>

     <table width="50%" border="2" cellspacing="1" align="center" class="tablegrid">
            <tr>
              <th  colspan="14" bgcolor="#E8F4BD"> Attandance: </th>
            </tr>
            <tr>
              <td width="16%" bgcolor="#C8F2C6"> sem-branch-sub </td>
              <td width="16%" bgcolor="#C8F2C6"> sem</td>
              <td width="16%" bgcolor="#C8F2C6"> Date </td>
              <td width="16%" bgcolor="#C8F2C6"> Akash1: </td>
              <td width="17%" bgcolor="#C8F2C6"> Ankur: </td>
              <td width="14%" bgcolor="#C8F2C6"> Ashish: </td>
              <td width="18%" bgcolor="#C8F2C6"> akar:</td>
              <td width="17%" bgcolor="#C8F2C6"> Akash: </td>
              <td width="18%" bgcolor="#C8F2C6">bharat:</td>
              <td width="18%" bgcolor="#C8F2C6">bhuwan:</td>
              <td width="18%" bgcolor="#C8F2C6">bhasker:</td>
              <td width="18%" bgcolor="#C8F2C6">BalKrishn:</td>
              <td width="18%" bgcolor="#C8F2C6">Chandan:</td>
              <td width="18%" bgcolor="#C8F2C6">Chintu:</td>
            </tr>
            <%
            while (rs1.next()) {


             // session.setAttribute("delId",rs.getString(1));

                %>
          <tr>
                    <td width="16%"><%=rs1.getString(1)%> </td>





                    <td>&nbsp;   <%=rs1.getString(2)%> </td>

                    <td>&nbsp;   <%=rs1.getString(3)%>  </td>

                    <td>&nbsp;   <%=rs1.getString(4)%>  </td>

                    <td>&nbsp;     <%=rs1.getString(5)%></td>

                    <td>&nbsp;   <%=rs1.getString(6)%> </td>

                     <td>&nbsp;   <%=rs1.getString(7)%> </td>

                      <td>&nbsp;   <%=rs1.getString(8)%> </td>

                       <td>&nbsp;   <%=rs1.getString(9)%> </td>

                        <td>&nbsp;   <%=rs1.getString(10)%> </td>
                        <td>&nbsp;   <%=rs1.getString(11)%> </td>

                       <td>&nbsp;   <%=rs1.getString(12)%> </td>

                        <td>&nbsp;   <%=rs1.getString(13)%> </td>
                         <td>&nbsp;   <%=rs1.getString(14)%> </td>
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
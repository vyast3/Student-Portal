  <%@page import=" java. sql.*" %>
   <%@include  file="menuHeaderForStudent.jsp" %>
   <%@include  file="chkIMS.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Edit Student:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>


<%!java.sql.ResultSet rs;%>
    <%

Connection con=mypack.MyCon.getConnection();
       Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
 //Statement st=con.createStatement();
ResultSet rs = null;
String id=(String)session.getAttribute("login_id");
%>
<%=    id%>


<%
String s = "select * from libTx where EnrollNo = '"+(String)session.getAttribute("login_id")+"'";
rs  = st.executeQuery(s);
%>

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

            


   <div>


  <form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="587" border="1" align="center">
    <tr bgcolor="#E7D296">
      <th  colspan="8"scope="row">Library Account: </th>

    </tr>
    <tr bgcolor="#E7D296">
      <th width="176" scope="row">Date </th>
      <td width="102">EnrollNO</td>
      <td width="155">Name</td>
      <td width="126">BookId </td>
       <td width="126">BookName </td>
        <td width="126">IssueDate </td>
         <td width="126">Return </td>
          <td width="126">Fine </td>

    </tr>

    <%

    while(rs.next())
 {

    %>



    <tr bgcolor="#DFF8BE">
      <th height="47" scope="row">&nbsp;<%=rs.getString(1)%></th>
      <td>&nbsp;<%=rs.getString(2)%></td>
      <td>&nbsp;<%=rs.getString(3)%></td>
      <td>&nbsp;<%=rs.getString(4)%></td>
      <td>&nbsp;<%=rs.getString(5)%></td>
      <td>&nbsp;<%=rs.getString(6)%></td>
      <td>&nbsp;<%=rs.getString(7)%></td>
      <td>&nbsp;<%=rs.getString(8)%></td>
    </tr>

    <%}%>
  </table>
  <p>&nbsp;</p>
</form>



   </div>



    </div>


</body>
</html>
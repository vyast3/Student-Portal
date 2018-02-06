    <%@page import=" java. sql.*" %>

 <%@include  file="menuHeaderForStudent.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>walk in:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>


<%!java.sql.ResultSet rs;%>
    <%
String id = request.getParameter("txtSearch");

Connection con = mypack.MyCon.getConnection();
 Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
 //Statement st=con.createStatement();
ResultSet rs = null;

String s = "select * from walkIns";
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
      <th  colspan="11"scope="row">Walk Ins: </th>

    </tr>
    <tr bgcolor="#E7D296">
      <th width="176" scope="row">city</th>
      <td width="102">Date</td>
       <td width="102">company Name</td>
      <td width="155">Degree</td>
      <td width="126">10th %</td>
         <td width="126">12th %</td>
            <td width="126">BE % </td>
               <td width="126"> pkg</td>
                <td width="126"> Batch</td>
                 <td width="126">Post </td>
                  <td width="126"> Skill</td>

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
         <td>&nbsp;<%=rs.getString(7 )%></td>
           <td>&nbsp;<%=rs.getString( 8)%></td>

  <td>&nbsp;<%=rs.getString(9 )%></td>

  <td>&nbsp;<%=rs.getString(10 )%></td>

  <td>&nbsp;<%=rs.getString( 11)%></td>


    </tr>

    <%}%>
  </table>
  <p>&nbsp;</p>
</form>



   </div>



    </div>


</body>

<h1>

   for further Detail Contac us...
</h1>
</html>
<%@page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>HtmSubAdmin</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
    <%
 Connection con = mypack.MyCon.getConnection();

 java.sql.Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
           ResultSet rs = null;
            String id=(String)session.getAttribute("login_id");
            rs = st.executeQuery("select book_id from lib ");
%>
 

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

            <div id="menu_tab">
                    <ul class="menu">
                         <li><a href="newHomeLogin1.jsp" class="nav_selected"> home </a></li>
                         <li class="divider"></li>
                         <li><a href="syll.html" class="nav"> Syllabus</a></li>
                         <li class="divider"></li>
                         <li><a href="loc.html" class="nav"> Location </a></li>
                         <li class="divider"></li>
                         <li><a href="contact.jsp" class="nav">contact us</a></li>
                         <li class="divider"></li>
                         <li><a href="logout.jsp" class="nav"> LogOut </a></li>

                    </ul>
            </div>

<div>

    <form id="form1" name="form1" method="post" action="jspLibrarynew.jsp">
  <table width="490" border="1" align="center">
    <tr>
      <th  colspan="2" scope="row">Transaction Book : </th>
    </tr>
    <tr>
      <th width="193" scope="row">Transaction Date:</th>
      <td width="281"><input name="txtId" type="text" id="txtId" /></td>
    </tr>
    <tr>
      <th scope="row">Enrollment No: </th>
      <td><input name="txtEnroll" type="text" id="txtEnroll" /></td>
    </tr>
    <tr>
      <th scope="row">Student Name: </th>
      <td><input name="txtName" type="text" id="txtName" /></td>
    </tr>
    <tr>
      <th scope="row">Book Id: </th>
     <td> <select name="txtBkid">


<%
while(rs.next())
    {

%>
  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>

  <%}%>
</select>
</td>
    </tr>
    <tr>
      <th scope="row">Book Name: </th>
      <td><input name="txtBkname" type="text" id="txtBkname" /></td>
    </tr>
    <tr>
      <th scope="row">Date of Issue: </th>
      <td><input name="txtBkissue" type="text" id="txtBkissue" /></td>
    </tr>
    <tr>
      <th scope="row">Date of Return: </th>
      <td><input name="txtBookReturn" type="text" id="txtBookReturn" /></td>
    </tr>
    <tr>
      <th scope="row">Fine:</th>
      <td><input name="txtFine" type="text" id="txtFine" /></td>
    </tr>
    <tr>
      <th  colspan="2"scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
</form>



</div>





</div>



</body>
</html>



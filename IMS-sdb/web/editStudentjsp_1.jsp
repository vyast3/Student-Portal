<%@page import=" java. sql.*" %>
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

Connection con1=mypack.MyCon.getConnection();
    Statement st=con1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                 rs = null;

                String r = "select * from student  where enroll_no='" + request.getParameter("id")+"'";
                rs = st.executeQuery(r);
                rs.next();




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
<%=rs.getString(1)%>

       <form id="form1" name="form1" method="get" action="studentry_1.jsp">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="556" border="1" align="center">
    <tr>
      <th colspan="2" scope="row">upDate Student Form: </th>

    </tr>
    <tr>
      <th width="115" scope="row"><div align="right">Enroll No: </div></th>
      <td width="203"><input type="text" value="<%=rs.getString(1)%> " name="enr" /></td>
    </tr>
    <tr>
      <th scope="row"> Cource</th>
      <td><input type="text" value="<%=rs.getString(2)%> " name="cou" /></td>
    </tr>
    <tr>
      <th scope="row">Dept:</th>
      <td><input type="text" value="<%=rs.getString(3)%> " name="dep" /></td>
    </tr>
    <tr>
      <th scope="row">Name:</th>
      <td><input type="text"  value="<%=rs.getString(4)%> " name="nam" /></td>
    </tr>
    <tr>
      <th scope="row">Address:</th>
      <td><input type="text"  value="<%=rs.getString(5)%> " name="add" /></td>
    </tr>
    <tr>
      <th scope="row">City:</th>
      <td><input type="text"  value="<%=rs.getString(6)%> "name="cit" /></td>
    </tr>
    <tr>
      <th scope="row">Gender:</th>
      <td><input type="text"  value="<%=rs.getString(7)%> "name="gen" /></td>
    </tr>
    <tr>
      <th scope="row">Password:</th>
      <td><input type="text"  value="<%=rs.getString(8)%> " name="pas" /></td>
    </tr>
    <tr>
      <th scope="row">D of Join: </th>
      <td><input type="text"  value="<%=rs.getString(9)%> " name="doa" /></td>
    </tr>
    <tr>
      <th scope="row">Mobile:</th>
      <td><input type="text"  value="<%=rs.getString(10)%> " name="mob" /></td>
    </tr>
    <tr>
      <th  colspan="2"scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>


   </div>



    </div>


 
</body>
</html>
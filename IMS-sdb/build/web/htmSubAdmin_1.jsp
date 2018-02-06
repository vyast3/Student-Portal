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
                         <li><a href="#" class="nav">contact us</a></li>
                         <li class="divider"></li>
                         <li><a href="contact.html" class="nav"> LogOut </a></li>

                    </ul>
            </div>

<div>

    <form id="form1" name="form1" method="post" action="jspSubAdmin.jsp">
  <table width="492" height="267" border="1" align="center">
    <tr>
      <th colspan="2" scope="row">Sub Administrator Entry form : </th>
    </tr>
    <tr>
      <th width="141" scope="row"> <div align="right">id:</div></th>
      <td width="230"><input name="txtId" type="text" id="txtId" /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Name:</div></th>
      <td><input name="txtName" type="text" id="txtName" /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Mob:</div></th>
      <td><input name="txtMob" type="text" id="txtMob" /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Address:</div></th>
      <td><input name="txtAddress" type="text" id="txtAddress" /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Password:</div></th>
      <td><input name="txtPass" type="text" id="txtPass" /></td>
    </tr>
    <tr>
      <th colspan="2" scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
</form>
</div>


</div>

</body>
</html>
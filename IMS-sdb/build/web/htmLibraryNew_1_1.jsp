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
                         <li><a href="contact.jsp" class="nav">contact us</a></li>
                         <li class="divider"></li>
                         <li><a href="logout.jsp" class="nav"> LogOut </a></li>

                    </ul>
            </div>

<div>

   <form id="form3" name="form3" method="post" action="bookTxjspSave.jsp">
  <table width="475" height="256" border="1" align="center">
    <tr>
      <th colspan="2" scope="row">Book Information: </th>
    </tr>
    <tr>
      <th width="168" scope="row">Enter Book Id: </th>
      <td width="291"><input name="txtId" type="text" id="txtId" />
      </td>
    </tr>
    <tr>
      <th scope="row">Book Title: </th>
      <td><input name="txtTitle" type="text" id="txtTitle" /></td>
    </tr>
    <tr>
      <th scope="row">Author:</th>
      <td><input name="txtAuthor" type="text" id="txtAuthor" /></td>
    </tr>
    <tr>
      <th scope="row">Quantity:</th>
      <td><input name="txtQty" type="text" id="txtQty" /></td>
    </tr>
    <tr>
      <th  colspan="2"  scope="row"> <input type="submit" name="Submit" value="Submit" />
      </th>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>





</div>

</body>
</html>
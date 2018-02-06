
 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
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



<div>

<form id="form1" name="form1" method="post" action="attandanceSearchJsp.jsp ">
  <table width="495" border="1" align="center" bordercolor="#1266F1" bgcolor="#E3E1FB">
    <tr>
      <th  colspan="2" scope="row">Attandance In your  subject: </th>
    </tr>
    <tr>
      <th width="207" scope="row">Enter Subject Name : </th>
      <td width="211"> <select name="lstSub">
        <option value="cs802">web Engg(cs802)</option>
        <option value="cs801">soft comp(cs801)</option>
      </select>
      </td>
    </tr>
    <tr>
      <th  colspan="2" scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
</form>
</div>





</div>

</body>
</html>
 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Atandence</title>
<style type="text/css">
<!--
.style1 {font-size: 14px}
-->
</style>

<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="atandance.jsp">
  <table width="505" border="1" align="center">
    <tr>
      <th colspan="4" scope="row">Atandance:</th>
    </tr>
    <tr>
      <th colspan="3" scope="row">Subject:</th>
      <td colspan="2"><select name="lstSub">
        <option value="cs802">web engg(cs802)</option>
        <option value="cs801">soft comp(cs801)</option>
        <option value="cs801">Wireless N/W(cs8303)</option>
        <option value="cs801">ACP(cs8401)</option>

            </select></td>
    </tr>
    <tr>

      <th colspan="3" scope="row">Semeater:</th>
      <td colspan="2"> <select name="lstSem">
        <option value="8">8</option>
      </select>      </td>
    </tr>
    <tr>

      <th  colspan="3" scope="row">Date:</th>
      <td colspan="2"><input name="txtDate" type="text" id="txtDate" /></td>
    </tr>
    <tr>
      <th width="38" scope="row">1</th>
      <th width="176" scope="row">Akash  </th>
      <td width="82"><input name="akash1" type="radio" value="p" />
P</td>
      <td width="181"><input name="akash1" type="radio" value="a" />
      A</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <th scope="row">Ankur</th>
      <td><input name="Ankur" type="radio" value="p" />
P</td>
      <td><input name="Ankur" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <th scope="row">Ashish</th>
      <td><input name="Ashish" type="radio" value="p" />
P</td>
      <td><input name="Ashish" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <th scope="row">Aakar</th>
      <td><input name="Aakar" type="radio" value="p" />
P</td>
      <td><input name="Aakar" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <th scope="row">Akash</th>
      <td><input name="Akash" type="radio" value="p" />
P</td>
      <td><input name="Akash" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <th scope="row">Bharat</th>
      <td><input name="Bharat" type="radio" value="p" />
P</td>
      <td><input name="Bharat" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">7</th>
      <th scope="row">Bhuwan</th>
      <td><input name="Bhuwan" type="radio" value="p" />
P</td>
      <td><input name="Bhuwan" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">8</th>
      <th scope="row">Bhasker</th>
      <td><input name="Bhasker" type="radio" value="p" />
P</td>
      <td><input name="Bhasker" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">9</th>
      <th scope="row">BalKrshin</th>
      <td><input name="BalKrshin" type="radio" value="p" />
P</td>
      <td><input name="BalKrshin" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">10</th>
      <th scope="row">chandan</th>
      <td><input name="chandan" type="radio" value="p" />
P</td>
      <td><input name="chandan" type="radio" value="a" />
A</td>
    </tr>
    <tr>
      <th scope="row">11</th>
      <th scope="row">Chintu</th>
      <td><input name="Chintu" type="radio" value="p" />
P</td>
      <td><input name="Chintu" type="radio" value="a" />
A</td>
    </tr>
    <tr>    </tr>
    <tr>
      <th scope="row">&nbsp;</th>
      <th  colspan="3"scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
</form>
</body>
</html>

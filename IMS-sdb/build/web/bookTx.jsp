<%@page import="java.sql.*" %>
<%@include  file="check.jsp" %>
<%@include  file="chkIMS.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>HtmSubAdmin</title>
<link rel="stylesheet" type="text/css" href="style.css" />

<SCRIPT type="text/javascript">
            <!-- Define white spaces-->
            var whitespace=" \t\n\r";
            function isEmpty(s)
            {
                var i;
                if((s==null)||s.length==0)
                {
                    return true;
                }
                for(i=0;i<s.length;i++)
                {
                    var c=s.charAt(i);
                    if(whitespace.indexOf(c)==-1)
                        return false;
                }
                return true;
            }




            function validate()
            {
                if(isEmpty(document.form1.txtId.value))
                {
                    alert("Error:Please Enter Date ");
                    document.form1.txtId.focus();
                    return false;
                }

                if(isEmpty(document.form1.txtEnroll.value))
                {
                    alert("Error:Please Enter Enrollment Number ");
                    document.form1.txtEnroll.focus();
                    return false;
                }
                if(isEmpty(document.form1.txtName.value))
                {
                    alert("Error:Please Enter Student Name");
                    document.form1.txtName.focus();
                    return false;
                }
                if(isEmpty(document.form1.txtBkname.value))
                {
                    alert("Error:Please Enter Book Name ");
                    document.form1.txtBkname.focus();
                    return false;
                }
                if(isEmpty(document.form1.txtBkissue.value))
                {
                    alert("Error:Please Enter Book Issue Date ");
                    document.form1.txtBkissue.focus();
                    return false;
                }
                if(isEmpty(document.form1.txtBookReturn.value))
                {
                    alert("Error:Please Enter Book Return Date ");
                    document.form1.txtBookReturn.focus();
                    return false;
                }
                if(isEmpty(document.form1.txtFine.value))
                {
                    alert("Error:Please Enter Fine ");
                    document.form1.txtFine.focus();
                    return false;
                }
        }

        </SCRIPT>
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
    <%
 Connection con1 = mypack.MyCon.getConnection();

 java.sql.Statement st1 = con1.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
           ResultSet rs1 = null;
            String id=(String)session.getAttribute("login_id");
            rs1 = st1.executeQuery("select book_id from lib ");
%>
 

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

              <div id="menu_tab">
                   <marquee> <h1>BOOK TRANSACTION</h1></marquee>
            </div>

<div>

    <form id="form1" name="form1" method="post" action="jspLibrarynew.jsp" onsubmit="return validate()">
  <table width="490" border="1" align="center">
    <tr>
      <th  colspan="2" scope="row">Transaction Book : </th>
    </tr>
    <tr>
      <th width="193" scope="row">Transaction Date:</th>
      <td width="281"><input name="txtId" type="text" id="txtId" />(DD/MM/YYYY)</td>
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
while(rs1.next())
    {

%>
  <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>

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
      <td><input name="txtBkissue" type="text" id="txtBkissue" />(DD/MM/YYYY)</td>
    </tr>
    <tr>
      <th scope="row">Date of Return: </th>
      <td><input name="txtBookReturn" type="text" id="txtBookReturn" />(DD/MM/YYYY)</td>
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



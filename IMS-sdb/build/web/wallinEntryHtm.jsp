
 <%@include  file="check.jsp" %>
 <%@include  file="chkIMS.jsp" %>
     <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Walk in Page</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->

<script type="text/javascript">
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


                if(isEmpty(document.LoginForm.textfield2.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield2.focus();
                    return false;
                }


                if(isEmpty(document.LoginForm.textfield3.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield3.focus();
                    return false;
                }


                if(isEmpty(document.LoginForm.textfield4.value))
                {
                    alert("Error:required Feild");
                    document.LoginForm.textfield4.focus();
                    return false;
                }

                if(isEmpty(document.LoginForm.textfield5.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield5.focus();
                    return false;
                }

                 if(isEmpty(document.LoginForm.textfield6.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield6.focus();
                    return false;
                }
                  if(isEmpty(document.LoginForm.textfield7.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield7.focus();
                    return false;
                }
                  if(isEmpty(document.LoginForm.textfield8.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield8.focus();
                    return false;
                }
                  if(isEmpty(document.LoginForm.textfield9.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield9.focus();
                    return false;
                }
                  if(isEmpty(document.LoginForm.textfield10.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield10.focus();
                    return false;
                }
                  if(isEmpty(document.LoginForm.textfield11.value))
                {
                    alert("Error: required Feild");
                    document.LoginForm.textfield11.focus();
                    return false;
                }
                    return true;
        }
</script>




<style type="text/css">@import url( StyleSheet/calendar-blue.css );
		</style>

    <script src="Javascript/calendar.js" type="text/javascript"></script>

    <script src="Javascript/calendar-setup.js" type="text/javascript"></script>







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
<form  name="LoginForm"  onsubmit="return validate(this);" method="post" action="saveInWalkInTab.jsp">
  <table width="335" border="1" align="center">
    <tr>
      <th colspan="2" bgcolor="#FCF1CD" scope="row"> Walk in:</th>
    </tr>
    <tr>
      <th width="161" bgcolor="#FDEDE3" scope="row"><div align="left">place:</div></th>
      <td width="172" bgcolor="#FDEDE3"><input type="text" name="textfield1" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Date:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield2" /><input type="button" name="btnEstablishment"/></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Company Name: </div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield3" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Degree:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield4" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">10th:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield5" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">12th : </div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield6" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">B.E.:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield7" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Package:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield8" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Batch:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield9" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Post:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield10" /></td>
    </tr>
    <tr>
      <th bgcolor="#FDEDE3" scope="row"><div align="left">Skill:</div></th>
      <td bgcolor="#FDEDE3"><input type="text" name="textfield11" /></td>
    </tr>
    <tr>
      <th height="43" colspan="2" bgcolor="#009933" scope="row"><input type="submit" name="Submit" value="Submit" /></th>
    </tr>
  </table>
</form>
</div>



<script type="text/javascript" language="javascript">

Calendar.setup(
			{
			inputField  : "textfield2",        // ID of the input field
			ifFormat    : "%Y",               // the date format
			button      : "btnEstablishment"       // ID of the button
			}
		);


</script>





</div>

</body>
</html>
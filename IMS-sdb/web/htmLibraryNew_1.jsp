<%@include  file="headerMenuForSubAdmin.jsp" %>
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
                if(isEmpty(document.form3.txtId.value))
                {
                    alert("Error:Please Enter ID ");
                    document.form3.txtId.focus();
                    return false;
                }
                if(isEmpty(document.form3.txtTitle.value))
                {

                    alert("Error:Please Enter Title");
                    document.form3.txtTitle.focus();
                    return false;

                }
                if(isEmpty(document.form3.txtAuthor.value))
                {
                    alert("Error:Please Enter Author Name");
                    document.form3.txtAuthor.focus();
                    return false;

                }
                if(isEmpty(document.form3.txtQty.value))
                {
                    alert("Error:Enter Books Quantity");
                    document.form3.txtQty.focus();
                    return false;

                }


                
        }

        </SCRIPT>

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

   <form id="form3" name="form3" method="post" action="bookTxjspSave.jsp" onsubmit="return validate()">
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
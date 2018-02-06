   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>HtmSubAdmin</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->


<script type='text/javascript'>

function formValidator(){
	// Make quick references to our fields
	var txtName = document.getElementById('txtName');
	var txtId = document.getElementById('txtId');
	var txtMob = document.getElementById('txtMob');

	var txtPass = document.getElementById('txtPass');

    var txtAddress = document.getElementById('txtAddress');

	// Check each input in the order that it appears in the form!
	if(isAlphabet(txtName, "Please enter only letters for your name"))
    {
		if(isAlphanumeric(txtId, "Numbers and Letters Only for Id"))
        {
            if(isAlphanumeric(txtAddress, "Numbers and Letters Only for address"))
            {
			if(isNumeric(txtMob, "Please enter only Number"))
            {

					if(lengthRestriction(txtPass, 6, 8))
                    {
                        if(lengthRestriction(txtMob,10, 11))
                    {

							return true;
						
					}
                    }
				
			}
        }
		}
	}


	return false;

}


function isNumeric(elem, helperMsg){
	var numericExpression = /^[0-9]+$/;
	if(elem.value.match(numericExpression)){
		return true;
	}else{
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isAlphabet(elem, helperMsg){
	var alphaExp = /^[a-zA-Z]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function isAlphanumeric(elem, helperMsg){
	var alphaExp = /^[0-9a-zA-Z]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

function lengthRestriction(elem, min, max){
	var uInput = elem.value;
	if(uInput.length >= min && uInput.length <= max){
		return true;
	}else{
		alert("Please enter between " +min+ " and " +max+ " characters");
		elem.focus();
		return false;
	}
}







</script>




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
                   <marquee> <h1>Entry Form</h1></marquee>
            </div>

<div>

    <form id="form1"  method="post" onsubmit='return formValidator()' action="jspSubAdmin.jsp">
    <table width="492" height="267" border="1" align="center">
    <tr>
      <th colspan="2" scope="row">Sub Administrator Entry form : </th>
    </tr>
    <tr>
      <th width="141" scope="row"> <div align="right">id:</div></th>
      <td width="230"><input name="txtId" type="text" id='txtId' /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Name:</div></th>
      <td><input name="txtName" type="text" id='txtName' /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Mob:</div></th>
      <td><input name="txtMob" type="text" id='txtMob' /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Address:</div></th>
      <td><input name="txtAddress" type="text" id='txtAddress' /></td>
    </tr>
    <tr>
      <th scope="row"><div align="right">Password:</div></th>
      <td><input name="txtPass" type="password" id='txtPass' /></td>
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
<%@include  file="headerMenuForSubAdmin.jsp" %>
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">



<head>

<SCRIPT type="text/javascript">
            <!-- Define white spaces-->
            var whitespace=" \t\n\r";

            function checklen()
            {

                val=document.LoginForm.mob.value;
                len=val.length;
                if(len>10)
                    {
                     alert("Value exceeds 10 digits");
                     document.LoginForm.mob.focus();
                    return false;
                    }
            }

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

            function checkNum(x)
            {

                var s_len=x.value.length ;
                var s_charcode = 0;
                for (var s_i=0;s_i<s_len;s_i++)
                {
                    s_charcode = x.value.charCodeAt(s_i);
                    if(!(s_charcode>=48 && s_charcode<=57))
                    {
                        alert("Only Numeric Values Allowed");
                        x.value='';
                        x.focus();
                        return false;
                    }
                }
                return true;
            }


      
            function validate()
            {
                if(isEmpty(document.LoginForm.enr.value))
                {
                    alert("Error: Enrollment no. is required");
                    document.LoginForm.enr.focus();
                    return false;
                }
                

                if(isEmpty(document.LoginForm.nam.value))
                {

                    alert("Error: Name is required");
                    document.LoginForm.nam.focus();
                    return false;

                }
                if(isEmpty(document.LoginForm.add.value))
                {

                    alert("Error: Address is required");
                    document.LoginForm.add.focus();
                    return false;
                if(isEmpty(document.LoginForm.nam.value))
                {

                    alert("Error: Name is required");
                    document.LoginForm.nam.focus();
                    return false;

                }
                }
                if(isEmpty(document.LoginForm.cit.value))
                {
                    alert("Error: City Name Must Enter");
                    document.LoginForm.cit.focus();
                    return false;

                }
                if(isEmpty(document.LoginForm.pas.value))
                {
                    alert("Error:Password required");
                    document.LoginForm.pas.focus();
                    return false;

                }
                if(isEmpty(document.LoginForm.doa.value))
                {
                    alert("Please Enter Date of joining");
                    document.LoginForm.doa.focus();
                    return false;
                 
                }
                

                          
                if(isEmpty(document.LoginForm.mob.value))
                {
                    alert("Please Enter Mobile No.");
                    document.LoginForm.mob.focus();
                    return false;
                }
                else
                {

                    if(checkNum(document.LoginForm.mob))
                    {
                      return true;
                    }

              return false;
                }
              

       
                    return false;
                }

        


        </SCRIPT>


<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Student Entry Page </title>
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

    <form method="POST" name="LoginForm"  action="studentry.jsp" onSubmit="return validate()" >

  <!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="49">
    <tr>
      <td width="100%" height="49" bgcolor="#C7F7BB">&nbsp;<font size="5"><MaRQUEE size="4">S T U
      D E N T&nbsp;&nbsp;&nbsp;&nbsp; I N F O R M A T I O N&nbsp;&nbsp;&nbsp;&nbsp;
      F O R M</marquee></font></td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4" height="495" bgcolor="#FFBFBF">
  <tr>
    <td width="44%" height="49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font size="4">Student Enrollment no</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td width="56%" height="49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <INPUT type="text" name="enr"  id="enr" size="28" value="0834"></td>
  </tr>
  <tr>
    <td width="44%" height="41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">&nbsp; Cource&nbsp;&nbsp;
    <b>&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
    <td width="56%" height="41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select size="1" name="cou">
     <option> B.E.</option>
     <option> Master of Comp.Application </option>
     <option> M.B.A.</option>
     </select></td>
  </tr>
  <tr>
    <td width="44%" height="53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Department&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td width="56%" height="53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <select size="1" name="dep">
     <option> Information   Technology</option>
     <option> Electronics   Communication </option>
     <option> Mechanical   Engg.</option>
     <option> Computer  Science</option>
     </select></td>

  </tr>
  <tr>
    <td width="44%" height="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">
    Student Name&nbsp;</font>;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td width="56%" height="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="nam"  id="nam"  size="28"></td>
  </tr>
  <tr>
    <td width="44%" height="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5">
    </font><font size="4">Permanent Address </font><font size="5">&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td width="56%" height="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="add" id="add" size="28"></td>
  </tr>
  <tr>
    <td width="44%" height="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">
    city&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td width="56%" height="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="cit" id="cit" size="28"></td>
  </tr>
  <tr>
    <td width="44%" height="47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">
   &nbsp Gender&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
         <td width="56%" height="47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <select size="1" name="gen">&nbsp;&nbsp;
             <option>male</option>
             <option>Female</option>
         </td>
     </tr>
  <tr>
    <td width="44%" height="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4"> 
  &nbsp;  Password&nbsp;&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td width="56%" height="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="pas" size="29"></td>
  </tr>
  <tr>
    <td width="44%" height="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font size="4">D_O_JOining&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td width="56%" height="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="date">
                        <option>1 </option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>
     <select name="month"> <option>January </option>
                        <option>February</option>
                        <option>March</option>
                        <option>April</option>
                        <option>May</option><option>June</option><option>July</option><option>August</option><option>September</option><option>October</option><option>November</option><option>December</option></select>
     <select name="year"> <option>2000 </option>
                        <option>2001</option>
                        <option>2002</option>
                        <option>2003</option>
                        <option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option><option>2015</option></select></td>
  </tr>
  <tr>
    <td width="44%" height="56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4">
    Mobile No.</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td width="56%" height="56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="mob" size="29"></td>
  </tr>
</table>

  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset" name="B2"></p>
</form>



</div>


</div>

</body>
</html>
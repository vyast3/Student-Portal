
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <script type="text/javascript">
        history.forward();
        </script>

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

            function checkNum(x)
            {

                var s_len=x.value.length ;
                var s_charcode = 0;
                for (var s_i=0;s_i<s_len;s_i++)
                {
                    s_charcode = x.value.charCodeAt(s_i);
                    if(!((s_charcode>=48 && s_charcode<=57)))
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
                if(isEmpty(document.LoginForm.login_id.value))
                {
                    alert("Error: user Id required");
                    document.LoginForm.unm.focus();
                    return false;
                }
                if(isEmpty(document.LoginForm.pass.value))
                {
                    alert("Error: password is required");
                    document.LoginForm.pass.focus();
                    return false;
                }

                if(isEmpty(document.LoginForm.ph.value))
                {
                    alert("Phone number cant be left blank");
                    document.LoginForm.ph.focus();
                    return false;
                }
                else
                {

                    if(checkNum(document.LoginForm.ph))
                    {
                      return true;
                    }

                    return false;
                }

                     return false;
        }

        </SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Home Login page:</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>
<form  action="login.jsp" method="get"  name="LoginForm"  onsubmit="return validate();">

<div  id="main_container">
<div class="top_illustration"></div>
	<div id="header">
    <div class="logo">
    <a href="index.html"></a>
    </div>

    </div>

       


    <div id="main_content">

    	<div id="middle_banner">
        	<div class="middle_banner_content">
       			 <img src="images/logo_2.gif1" alt="" title="" width="650" height="150" />
            </div>
        </div>

  <div id="menu_tab">
                   <marquee> <h1>Education Resource Center</h1></marquee>

                     
            </div>
             <div>
                <p>
                    <a href="contact.jsp"><h1><b>Contact Us</b></h1></a>
                </p>
            </div>
        <div id="left_content">
        <h1>About Us</h1>
        <p>
       We have developed the self-development training modules especially for college teachers and have implemented this program for the past ten years in over fifty colleges throughout India. The effectiveness of the instruments has been validated through testing and evaluation by teachers from 25 colleges   </p>


        <h1>Our Services</h1>
        <p class="clear">
        
       S.D.B. is an institution set up by Shrinivas Education Society, which offer 4-Year BE, 3-Year MCA and 2-Year MBA Degree programmes. </p>

        <p class="clear">
        <img src="" alt="" title="" class="left_img" width="48" height="48" />
       Find out how individuals who hold copyright to their works can contribute papers, reports. </p>


        <p class="clear">
        <img src="images/icon3.png" alt="" title="" class="left_img" width="48" height="48" />
       Bibliographic records of education literature, plus a growing collection of full text  </p>

        </div>

        <div id="right_content">
        	<div class="members_login">
            <h1>Clients login</h1>

            <div class="login_row">
            <label class="login">id:</label>
            <input type="text" class="login_input" name="login_id" />
            </div>
             <div class="login_row">
            <label class="login">password:</label>
            <input type="password" class="login_input" name="pass" />
            </div>
              <div class="login_row">
			<input type="submit" class="login_submit"></a>
            </div>
            </div>

         <h1>Latest News</h1>
         <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
       The workshop will be held at the Guest House on NMU campus, where accommodations will be arranged. </p>

          <p class="news">
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
          This is our second workshop this year in Self development for teachers. It will be held from may 20 to 22, 2011</p>
        <img src="images/calendar.gif" alt="" title="" class="left_img" />
        <P>National Conference ECOMM-11 by Bansal Group @ Indore</P>



        </div>



    </div>

</div>
</form>
</body>
</html>
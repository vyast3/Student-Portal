
<%@page import=" java. sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Search college:</title>
<link rel="stylesheet" type="text/css" href="style.css" />


    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
</head>
<body>

    <style type="text/css">

body
div#menu {


}

</style>



<%!java.sql.ResultSet rs;%>
    <%
String id = request.getParameter("txtSearch");

Connection con = mypack.MyCon.getConnection();
 Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
 //Statement st=con.createStatement();
ResultSet rs = null;

String s = "select * from college";
rs  = st.executeQuery(s);
%>

<div id="menu">
    <ul class="menu">

            <li class="last"><a href="adminHome.jsp"><span>Home</span></a></li>


        <!--
        <li><a href="#" class="parent"><span>Product Info</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                    <div><ul>
                        <li><a href="#"><span>Sub Item 1.1</span></a></li>
                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                    <div><ul>
                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
                <li><a href="#"><span>Sub Item 4</span></a></li>
                <li><a href="#"><span>Sub Item 5</span></a></li>
                <li><a href="#"><span>Sub Item 6</span></a></li>
                <li><a href="#"><span>Sub Item 7</span></a></li>
            </ul> </div>
        </li>
        -->






          <li><a href="#"><span> Places</span></a>
            <div>
                <ul>
                        <li><a href="addSupplier.jsp"><span>Add suppliers</span></a></li>
                        <li><a href="addRawWood.jsp"><span>Add wood</span></a></li>
                        <li><a href="addEmployee.jsp"><span>Add employee</span></a></li>
                        <li><a href="addProducts.jsp"><span>Add Products</span></a></li>
                </ul>
            </div>
          </li>




          <li><a href="#"><span>Cultures</span></a>
            <div>
                <ul>
                      <li><a href="#"><span>View Suppliers</span></a></li>
                        <li><a href="#"><span>View wood</span></a></li>
                         <li><a href="#"><span>View employee</span></a></li>
                         <li><a href="#"><span>View Customers</span></a></li>
                </ul>
            </div>
          </li>

           <li><a href="#"><span>Temples</span></a>
            <div>
                <ul>
                        <li><a href="#"><span>Create order</span></a></li>
                        <li><a href="#"><span>View order</span></a></li>
                </ul>
            </div>
          </li>


         <li><a href="#"><span>Santuries</span></a>
            <div>
                <ul>

                    <li><a href="#" class="parent"><span>Voucher</span></a>
                      <div><ul>
                        <li><a href="#"><span>Create Voucher</span></a></li>
                        <li><a href="#"><span>View All</span></a></li>
                      </ul></div>
                   </li>


                    <li><a href="#" class="parent"><span>Bills</span></a>
                      <div><ul>
                        <li><a href="#"><span>Create Bill</span></a></li>
                        <li><a href="#"><span>View Bill</span></a></li>
                      </ul></div>
                   </li>


                </ul>
            </div>
          </li>


           <li><a href="#" class="parent"><span>Travels Plan</span></a>
            <div>
                <ul>

                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                    <div><ul>
                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
                <li><a href="#"><span>Sub Item 4</span></a></li>
                <li><a href="#"><span>Sub Item 5</span></a></li>
                <li><a href="#"><span>Sub Item 6</span></a></li>

                 <li><a href="#" class="parent"><span>Setting</span></a>
                    <div><ul>
                        <li><a href="#"><span>Change Password</span></a></li>
                        <li><a href="#"><span>Update Account</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#"><span></span></a></li>
            </ul></div>
        </li>

         <!--- *********************Single Menu******************** -->
        <li class="last"><a href="#"><span>Log out</span></a></li>
      <!---    <li class="last"><a href="#"><span>Log out</span></a></li>    -->

    </ul>


  <form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="587" border="1" align="center">
    <tr bgcolor="#E7D296">
      <th  colspan="7"scope="row">Total College: </th>

    </tr>
    <tr bgcolor="#E7D296">
      <th width="176" scope="row">city</th>
      <td width="102">college</td>
      <td width="155">Address</td>
      <td width="126">phone </td>
         <td width="126">Total seat </td>
            <td width="126">Cource </td>
               <td width="126">Branch in other City </td>
    </tr>

    <%

    while(rs.next())
 {

    %>



    <tr bgcolor="#DFF8BE">
      <th height="47" scope="row">&nbsp;<%=rs.getString(1)%></th>
      <td>&nbsp;<%=rs.getString(2)%></td>
      <td>&nbsp;<%=rs.getString(3)%></td>
      <td>&nbsp;<%=rs.getString(4)%></td>
       <td>&nbsp;<%=rs.getString(5)%></td>
        <td>&nbsp;<%=rs.getString(6)%></td>
         <td>&nbsp;<%=rs.getString(7)%></td>

    </tr>

    <%}%>
  </table>
  <p>&nbsp;</p>
</form>



   </div>






</body>
</html>
<%@ page import = "java.sql.*" %>

<% 
String bno = request.getParameter("bno");
 Connection con=mypack.MyCon.getConnection();
 java.sql.Statement st = con.createStatement();
ResultSet rs = null;
rs=st.executeQuery("select * from bus where bno='"+bno+"'");
if(rs.next())
{

%>
    <table  bgcolor="#CCFFCC" border="0" cellpadding="3" cellspacing="4" style="border-collapse: collapse" bordercolor="#115518" >
        <tr>
            <td><font size="4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Root of This bus is :</font> </td>
            <td><font size="5"><%=rs.getString(2)%></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
         
    </table>
    <%
    }
    
    else{
    %>
    <jsp:forward page="LoginError.html"></jsp:forward>
    <%
    }
    %>
        
    

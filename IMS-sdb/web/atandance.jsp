<%@ page import = "java.sql.*" %>

<%
String lst = request.getParameter("lstSub");
String sem = request.getParameter("lstSem");
        String date = request.getParameter("txtDate");
        String id = request.getParameter("akash1");
        String enr = request.getParameter("Ankur");
        String name = request.getParameter("Ashish");
        String bkid = request.getParameter("Aakar");
        String Bkname = request.getParameter("Akash");
        String bkissue = request.getParameter("Bharat");
        String bkreturn = request.getParameter("Bhuwan");
        String fine = request.getParameter("Bhasker");
        String bal = request.getParameter("BalKrshin");
        String chandan = request.getParameter("chandan");
        String chintu = request.getParameter("Chintu");

        Connection con = mypack.MyCon.getConnection();


        PreparedStatement st = con.prepareStatement("insert into atendence1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,? )");
        st.setString(1, lst);
        st.setString(2, sem);
        st.setString(3, date);

        st.setString(4, id);
        st.setString(5, enr);
        st.setString(6, name);
        st.setString(7, bkid);
        st.setString(8, Bkname);
        st.setString(9, bkissue);
        st.setString(10, bkreturn);
        st.setString(11, fine);
        st.setString(12, bal);
        st.setString(13, chandan);
        st.setString(14, chintu);
        st.executeUpdate();



%>
Record has been saved...
<a href="hodShowSinglejsp.jsp" ><h1>Back</h1></a>


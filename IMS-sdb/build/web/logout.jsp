 

 

<%
/////////////////////////////our//////////////////////////////////
   response.addHeader("cache-control","no-cache");
/*HttpSession*/session = request.getSession(false);
session.invalidate();
response.sendRedirect("newHomeLogin1.jsp");




%>


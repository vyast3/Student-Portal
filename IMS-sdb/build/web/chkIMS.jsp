 

<%
       response.addHeader("cache-control","no-cache");

         session = request.getSession(false);
        if(session==null) {
            response.sendRedirect("newHomeLogin1.jsp"); return;
        }

        String ul1 = (String) session.getAttribute("login_id");

        if(ul1==null) {
            response.sendRedirect("newHomeLogin1.jsp"); return;
        }
%>

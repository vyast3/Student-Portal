/*
 * serv.java
 *
 */

package mypack;

import java.io.*;
import java.net.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author tanvi
 * @version
 */
public class serv extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String unm=request.getParameter("unm");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
        Statement stmt=con.createStatement();
       // int n=stmt.executeUpdate("insert into login values('33','tt')");
        ResultSet rs=stmt.executeQuery("select * from login where unm='"+unm+"'");
        if(!rs.next())
            out.println("invalid user");
        else
            response.sendRedirect("home.html");
       
        
        
      /*
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet serv</title>");
        out.println("</head>");
        out.println("<body>");
        out.println(unm);
        out.println("</body>");
        out.println("</html>");*/
        
        con.close();
        out.close();    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}

/*
 * entry.java
 */
import java.lang.String.*;
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
public class entry extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws  Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       String en=request.getParameter("enroll");
       String nm=request.getParameter("name");
     //  string s=enroll;
      // string n=name;
       int n=0;
       
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
        Statement stmt=con.createStatement();
        String q="insert into student values('"+en+"','"+nm+"')";
       n=stmt.executeUpdate(q);
       
        if(n!=0)
        {
       //TODO output your page here
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet entry</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("record has saved");
        out.println("hi");
        out.println("</body>");
        out.println("</html>");
        }
        else
        {
           out.println("not saved");
        }
        
       con.close();
       
        out.close();
    }
    
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

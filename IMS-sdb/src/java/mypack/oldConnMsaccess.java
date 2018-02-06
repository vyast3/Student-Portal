/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;
import java.sql.*;
/**
 *
 * @author tanvi
 */
public class oldConnMsaccess {

     private static Connection con;

    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedatabase","root","root");
         //   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// set this to a MS Access DB you have on your machine
/*String filename = "D:/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
 con = DriverManager.getConnection( database ,"",""); */


        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }

    }

    public static Connection getConnection() throws SQLException
    {
        if(con.isClosed())
        {
                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedatabase","root","root");
                        /* String filename = "D:/collegedatabase.mdb";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=";
database+= filename.trim() + ";DriverID=22;READONLY=true}"; // add on to the end
// now we can get the connection from the DriverManager
  con = DriverManager.getConnection( database ,"","");*/
        }
            return con;


}
}
 
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
public class TestDb {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedatabase", "root", "root");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }




    }

}

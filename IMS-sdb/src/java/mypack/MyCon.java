package mypack;
import java.sql.*;

public class MyCon
{
    private static Connection con;

    static
    {
        try
        {
         Class.forName("com.mysql.jdbc.Driver");

           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedatabase","root","root");

        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        catch (ClassNotFoundException ex)
        {
            ex.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException
    {
        if(con.isClosed())
        {

  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedatabase","root","root");
            }
            return con;


}
}

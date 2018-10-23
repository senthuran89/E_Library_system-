using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for BookOrder
/// </summary>
public class BookOrder
{
    
 
    public static string Error;

    public static SqlDataReader GetBookdetails(int CategoryID)
    {
        string sql = "SELECT  Bookid,Bookname,Language,Edition,Authername1,Description FROM bookview where Categoryid=' " + CategoryID + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader GetBookdetails2()
    {
        string sql = "SELECT Top 20 Bookid,Bookname,Language,Edition,Authername1,Description FROM bookview ";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static int orderno;
    public static int AddBookorder(int orderno1, int Bookid)
    {
        
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpBookorder", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@orderno", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@bookid", SqlDbType.Int).Value = Bookid;
                rowsAffected = command.ExecuteNonQuery();
                orderno = int.Parse(command.Parameters["@orderno"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    //public static int orderno1;
    public static int AddBookorder1(int orderno1, int Bookid)
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpeditBookorder2", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@orderno", SqlDbType.Int).Value = orderno1;
                command.Parameters.Add("@bookid", SqlDbType.Int).Value = Bookid;
                rowsAffected = command.ExecuteNonQuery();
                orderno = 0;
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int memberno;
    public static int Addmember(
        int Memberid,
        string Firstname,
        string Lastname,
        string Address,
        string Province,
        string City,
        string Officeaddres,
        string Email,
        string Homeph,
        string Officeph,
        string Mobileph,
        string Nicnumber,
        DateTime Dateofbirth,
        DateTime Regdate,
        string Username,
        string Password
        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddmember", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Memberid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Firstname", SqlDbType.VarChar, 30).Value = Firstname;
                command.Parameters.Add("@Lastname", SqlDbType.VarChar, 50).Value = Lastname;
                command.Parameters.Add("@Address", SqlDbType.VarChar, 30).Value = Address;
                command.Parameters.Add("@Province", SqlDbType.VarChar, 30).Value = Province;
                command.Parameters.Add("@City", SqlDbType.VarChar, 30).Value = City;
                command.Parameters.Add("@Officeaddres", SqlDbType.VarChar, 30).Value = Officeaddres;
                command.Parameters.Add("@Email", SqlDbType.VarChar, 30).Value = Email;
                command.Parameters.Add("@Homeph", SqlDbType.VarChar, 15).Value = Homeph;
                command.Parameters.Add("@Officeph", SqlDbType.VarChar, 15).Value = Officeph;
                command.Parameters.Add("@Mobileph", SqlDbType.VarChar, 15).Value = Mobileph;
                command.Parameters.Add("@Nicnumber", SqlDbType.VarChar, 10).Value = Nicnumber;
                command.Parameters.Add("@Dateofbirth", SqlDbType.DateTime).Value = Dateofbirth;
                command.Parameters.Add("@Regdate", SqlDbType.DateTime ).Value = Regdate;
                                command.Parameters.Add("@Username", SqlDbType.VarChar, 30).Value = Username;
                                command.Parameters.Add("@Password", SqlDbType.VarChar, 30).Value = Password;
                                

                rowsAffected = command.ExecuteNonQuery();
                memberno = int.Parse(command.Parameters["@Memberid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static string getvalcount(string sql)
    {
        
        using (SqlConnection con = ConnectionManager.GetConnection())
        {
            string val;
            {

                SqlCommand com = new SqlCommand(sql, con);
                val = com.ExecuteScalar().ToString();


                return val;

            }
        }
    }
    public static double getval(string sql)
    {
        //string sql = "SELECT * FROM Product where ProductName=' " + ProductName + "'";
        using (SqlConnection con = ConnectionManager.GetConnection())
        {
            double val;
            {

                SqlCommand com = new SqlCommand(sql, con);
                val = double.Parse(com.ExecuteScalar().ToString());


                return val;

            }

        }
    }
    public static SqlDataReader Getview(string sql)
    {
        //string sql = "SELECT CategoryName FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader GetBookdetails1(int Bookid)
    {
        string sql = "SELECT Bookid,Bookname,Language,Edition FROM bookview where Bookid=' " + Bookid + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static int orderid;
    public static int Addorder(int orderno1,int orderno, int mid,DateTime d1)
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spaddorder", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Orderid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@orderno", SqlDbType.Int).Value = orderno;
                command.Parameters.Add("@mid", SqlDbType.Int).Value = mid;
                command.Parameters.Add("@date1", SqlDbType.DateTime).Value = d1;
                //command.Parameters.Add("@Description", SqlDbType.VarChar,120).Value = desc;
                rowsAffected = command.ExecuteNonQuery();
                orderid = int.Parse(command.Parameters["@Orderid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
}

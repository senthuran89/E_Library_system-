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
/// Summary description for adminfunctions
/// </summary>
public class adminfunctions
{
    public static string Error;

    public static SqlDataReader GetCategory()
    {
        string sql = "SELECT Categoryid,Categoryname,Description FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Getbook()
    {
        string sql = "SELECT * FROM Book";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Getauther()
    {
        string sql = "SELECT * FROM Auther";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static int catogroyid;
    public static int AddCategory(
             int Categoryid,
  string Categoryname,
        string Description


        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpaddCategory", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Categoryid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Categoryname", SqlDbType.VarChar, 50).Value = Categoryname;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = Description;
                rowsAffected = command.ExecuteNonQuery();
                catogroyid = int.Parse(command.Parameters["@Categoryid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int Updatecatogery(
                           int Categoryid,
                           string CategoryName,
                           string Description
                          )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditcategory", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Categoryid", SqlDbType.Int).Value = Categoryid;
                command.Parameters.Add("@CategoryName", SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 100).Value = Description;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int bookidid;
    public static int Addbook(
              int Bookid,
      int Categoryid,
     int Referenceid,
    string Bookname,
         int Noofpages,
  string Language,
   int Autherid,
  DateTime Publishdate,
  string Publication,
 string Publishcity,
   string Edition,
  string Isbn,
   string Donater,
   string Description,
    string Picture



        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spaddbook1", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Bookid", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@Categoryid", SqlDbType.Int).Value = Categoryid;
                command.Parameters.Add("@Referenceid", SqlDbType.Int).Value = Referenceid;
                command.Parameters.Add("@Bookname", SqlDbType.VarChar, 50).Value = Bookname;
                command.Parameters.Add("@Noofpages", SqlDbType.Int).Value = Noofpages;
                command.Parameters.Add("@Language", SqlDbType.VarChar, 15).Value = Language;
                command.Parameters.Add("@Autherid", SqlDbType.Int).Value = Autherid;
                command.Parameters.Add("@Publishdate", SqlDbType.DateTime).Value = Publishdate;
                command.Parameters.Add("@Publication", SqlDbType.VarChar, 50).Value = Publication;
                command.Parameters.Add("@Publishcity", SqlDbType.VarChar, 50).Value = Publishcity;
                command.Parameters.Add("@Edition", SqlDbType.VarChar, 50).Value = Edition;
                command.Parameters.Add("@Isbn", SqlDbType.VarChar, 50).Value = Isbn;
                command.Parameters.Add("@Donater", SqlDbType.VarChar, 50).Value = Donater;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = Description;
                command.Parameters.Add("@Picture", SqlDbType.VarChar, 50).Value = Picture;


                rowsAffected = command.ExecuteNonQuery();
                bookidid = int.Parse(command.Parameters["@Bookid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int Editbook(
              int Bookid,
      int Categoryid,
     int Referenceid,
    string Bookname,
         int Noofpages,
  string Language,
   int Autherid,
  DateTime Publishdate,
  string Publication,
 string Publishcity,
   string Edition,
  string Isbn,
   string Donater,
   string Description,
    string Picture



        )
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditBook", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Bookid", SqlDbType.Int).Value = Bookid;
                command.Parameters.Add("@Categoryid", SqlDbType.Int).Value = Categoryid;
                command.Parameters.Add("@Referenceid", SqlDbType.Int).Value = Referenceid;
                command.Parameters.Add("@Bookname", SqlDbType.VarChar, 50).Value = Bookname;
                command.Parameters.Add("@Noofpages", SqlDbType.Int).Value = Noofpages;
                command.Parameters.Add("@Language", SqlDbType.VarChar, 15).Value = Language;
                command.Parameters.Add("@Autherid", SqlDbType.Int).Value = Autherid;
                command.Parameters.Add("@Publishdate", SqlDbType.DateTime).Value = Publishdate;
                command.Parameters.Add("@Publication", SqlDbType.VarChar, 50).Value = Publication;
                command.Parameters.Add("@Publishcity", SqlDbType.VarChar, 50).Value = Publishcity;
                command.Parameters.Add("@Edition", SqlDbType.VarChar, 50).Value = Edition;
                command.Parameters.Add("@Isbn", SqlDbType.VarChar, 50).Value = Isbn;
                command.Parameters.Add("@Donater", SqlDbType.VarChar, 50).Value = Donater;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = Description;
                command.Parameters.Add("@Picture", SqlDbType.VarChar, 50).Value = Picture;


                rowsAffected = command.ExecuteNonQuery();
                //bookidid = int.Parse(command.Parameters["@Bookid"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int addauther(
                           int Autherid,
                           string Authername1,
                           string Authername2,
        string Authername3
                          )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("addauthor", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Autherid", SqlDbType.Int).Value = Autherid;
                command.Parameters.Add("@Authername1", SqlDbType.VarChar, 50).Value = Authername1;
                command.Parameters.Add("@Authername2", SqlDbType.VarChar, 100).Value = Authername2;
                command.Parameters.Add("@Authername3", SqlDbType.VarChar, 100).Value = Authername3;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int edituther(
                         int Autherid,
                         string Authername1,
                         string Authername2,
      string Authername3
                        )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Speditauther", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@Autherid", SqlDbType.Int).Value = Autherid;
                command.Parameters.Add("@Authername1", SqlDbType.VarChar, 50).Value = Authername1;
                command.Parameters.Add("@Authername2", SqlDbType.VarChar, 100).Value = Authername2;
                command.Parameters.Add("@Authername3", SqlDbType.VarChar, 100).Value = Authername3;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;


    }

    public static int addmsg(
                         int orderid,
                         string msg

                        )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spaddmessage", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@orderid", SqlDbType.Int).Value = orderid;
                command.Parameters.Add("@msg", SqlDbType.VarChar, 50).Value = msg;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int addlending(
                            int lendid,
                         DateTime getdate,
        DateTime sampledate,

      string desc
                          )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spaddlend", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@lendid", SqlDbType.Int).Value = lendid;
                command.Parameters.Add("@getdate", SqlDbType.DateTime ).Value = getdate;
                command.Parameters.Add("@sampledate", SqlDbType.DateTime).Value = sampledate;
                command.Parameters.Add("@desc", SqlDbType.VarChar, 50).Value = desc;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int addReturn(
                            int returnid,
                         DateTime redate,
        string desc,
        int fainid

                          )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddReturn", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@returnid", SqlDbType.Int).Value = returnid;
                command.Parameters.Add("@returndate", SqlDbType.DateTime).Value = redate;
                command.Parameters.Add("@fainid", SqlDbType.Int).Value = fainid;
                command.Parameters.Add("@Desc", SqlDbType.VarChar, 50).Value = desc;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int adduser(

                        DateTime createdate,
        int staffno,
        string username,
        string password
       

                         )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spadduser", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@createdate", SqlDbType.DateTime).Value = createdate;
                command.Parameters.Add("@staffno", SqlDbType.Int).Value = staffno;
                command.Parameters.Add("@username", SqlDbType.VarChar ,50).Value = username;
                command.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = password;

                rowsAffected = command.ExecuteNonQuery();
            }   
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int edituser(

                    
       int id,
       string password


                        )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spedituser", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@id", SqlDbType.Int).Value = id;
                command.Parameters.Add("@passwords", SqlDbType.Int).Value = password;
                

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
}
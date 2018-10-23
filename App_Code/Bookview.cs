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
/// Summary description for Bookview
/// </summary>
public class Bookview
{
    public static string Error;
    public static DataSet GetBookdetailstobookname(string Bookname1)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Bookid,Bookname,Language,Edition FROM bookview where Bookname=@Bookname";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@Bookname", SqlDbType.VarChar, 50).Value = Bookname1;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookview");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
    public static DataSet GetBookdetailstoAother(string Auther)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Bookid,Bookname,Language,Edition,Authername1 FROM bookview where Authername1=@Authername1";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@Authername1", SqlDbType.VarChar, 50).Value = Auther;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookview1");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
    public static DataSet GetBookdetailstopublication(string publication)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Bookid,Bookname,Language,Edition,Publication FROM bookview where Publication=@Publication";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@Publication", SqlDbType.VarChar, 50).Value = publication;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookview2");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
    public static DataSet GetBookdetailstoisbn(string isbn)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Bookid,Bookname,Language,Edition,Publication,Isbn FROM bookview where Isbn=@Isbn";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@Isbn", SqlDbType.VarChar, 50).Value = isbn;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookview3");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
    public static DataSet GetBookarivals()
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Bookid,Bookname,Language,Edition FROM bookview";
                SqlCommand command = new SqlCommand(sql, connection);
                //command.Parameters.Add("@Bookname", SqlDbType.VarChar, 50).Value = Bookname1;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookviews");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }

    public static DataSet GetOrderview()
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT Orderno,Bookid1,Bookname,Publishdate,Publication,Edition,Isbn,Authername1 FROM bookorders ";
                SqlCommand command = new SqlCommand(sql, connection);
               // command.Parameters.Add("@Bookname", SqlDbType.VarChar, 50).Value = Bookname1;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Bookview5");
            }
            Error = "Suessfully";
        }
        catch
        {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
}

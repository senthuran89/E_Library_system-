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
/// Summary description for payments
/// </summary>
public class payments
{

    public static string Error;
    public static int fid,pid;
	 public static SqlDataReader Getdetail(string sql)
    {
        //string sql = "SELECT CategoryName FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

     public static int addfain(
                             int fainid,
                          double  amount,
         string desc,
         int mid

                           )
     {
         int rowsAffected = 0;
         try
         {
             using (SqlConnection connection = ConnectionManager.GetConnection())
             {
                 SqlCommand command = new SqlCommand("Spaddfainfee", connection);
                 command.CommandType = CommandType.StoredProcedure;
                 command.Parameters.Add("@fainid", SqlDbType.Int).Direction = ParameterDirection.Output;
               //command.Parameters.Add("@fainid", SqlDbType.Int).Value = fainid;
                 command.Parameters.Add("@mid", SqlDbType.Int ).Value = mid;
                 command.Parameters.Add("@amount", SqlDbType.Money).Value = amount;
                 command.Parameters.Add("@desc", SqlDbType.VarChar, 50).Value = desc;

                 rowsAffected = command.ExecuteNonQuery();
                 fid = int.Parse(command.Parameters["@fainid"].Value.ToString());
             }
             Error = "Update SuessFully";
         }
         catch
         {
             Error = "Please Check your Entered Data";
         }
         return rowsAffected;
     }
     public static int addpayment(
         int Paymentid,
                              int Memberid,
                           double Amount, 
         DateTime Paymentdate, 
         string Paymenttype,
          string Description,


         DateTime Duedate

                            )
     {
         int rowsAffected = 0;
         try
         {
             using (SqlConnection connection = ConnectionManager.GetConnection())
             {
                 SqlCommand command = new SqlCommand("Addpayment", connection);
                 command.CommandType = CommandType.StoredProcedure;
                 command.Parameters.Add("@Paymentid", SqlDbType.Int).Direction = ParameterDirection.Output;
                 command.Parameters.Add("@Memberid", SqlDbType.Int).Value = Memberid;
                 command.Parameters.Add("@amount", SqlDbType.Money).Value = Amount;
                 command.Parameters.Add("@Paymentdate", SqlDbType.DateTime).Value = Paymentdate;
                 command.Parameters.Add("@Paymenttype", SqlDbType.VarChar, 20).Value = Paymenttype;
               
                 command.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = Description;
                 command.Parameters.Add("@Duedate", SqlDbType.DateTime).Value = Duedate;
                 rowsAffected = command.ExecuteNonQuery();
                 pid = int.Parse(command.Parameters["@Paymentid"].Value.ToString());
             }
             Error = "Update SuessFully";
         }
         catch
         {
             Error = "Please Check your Entered Data";
         }
         return rowsAffected;
     }
     public static int addfaindetails(
                            int fainid,
                         int days,
        float fainrate,
       string des

                          )
     {
         int rowsAffected = 0;
         try
         {
             using (SqlConnection connection = ConnectionManager.GetConnection())
             {
                 SqlCommand command = new SqlCommand("spaddfain", connection);
                 command.CommandType = CommandType.StoredProcedure;
                 command.Parameters.Add("@Fainid", SqlDbType.Int).Direction = ParameterDirection.Output;
                 //command.Parameters.Add("@fainid", SqlDbType.Int).Value = fainid;
                 command.Parameters.Add("@days", SqlDbType.Int).Value = days;
                 command.Parameters.Add("@fainrate", SqlDbType.Float).Value = fainrate;
                 command.Parameters.Add("@des", SqlDbType.VarChar, 50).Value = des;

                 rowsAffected = command.ExecuteNonQuery();
                 fid = int.Parse(command.Parameters["@Fainid"].Value.ToString());
             }
             Error = "Update SuessFully";
         }
         catch
         {
             Error = "Please Check your Entered Data";
         }
         return rowsAffected;
     }
     public static int editfaindetails(
                          int @Fainid,
                      //  int days,
       float fainrate
     // string des

                         )
     {
         int rowsAffected = 0;
         try
         {
             using (SqlConnection connection = ConnectionManager.GetConnection())
             {
                 SqlCommand command = new SqlCommand("speditfain", connection);
                 command.CommandType = CommandType.StoredProcedure;
                // command.Parameters.Add("@Fainid", SqlDbType.Int).Direction = ParameterDirection.Output;
                 command.Parameters.Add("@Fainid", SqlDbType.Int).Value = Fainid;
                // command.Parameters.Add("@days", SqlDbType.Int).Value = days;
                 command.Parameters.Add("@fainrate", SqlDbType.Float).Value = fainrate;
                 //command.Parameters.Add("@des", SqlDbType.VarChar, 50).Value = des;

                 rowsAffected = command.ExecuteNonQuery();
                // fid = int.Parse(command.Parameters["@Fainid"].Value.ToString());
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PizzaDeliveryApp.Data
{
    public class SQLUserClass
    {
        private const string ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + @"'J:\Web Protocols\Final_Project\PizzaDeliveryApp\PizzaDeliveryApp\Data\UserInfo.mdf';" + "Integrated Security=True;Connect Timeout=30";
        private static System.Data.SqlClient.SqlDataAdapter userAdapter;
        private static System.Data.SqlClient.SqlCommand userCmd = new System.Data.SqlClient.SqlCommand();
        private static System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        public static System.Data.DataTable tblUserData = new System.Data.DataTable("UserInfo");

        public static void setupUserDataAdapter()
        {
            con.ConnectionString = ConStr;
            userCmd.Connection = con;
            userCmd.CommandType = System.Data.CommandType.Text;
            userCmd.CommandText = "Select * from UserInfo order by userID";

            userAdapter = new System.Data.SqlClient.SqlDataAdapter(userCmd);

            userAdapter.FillSchema(tblUserData, System.Data.SchemaType.Source);

        }

        public static void getUserData()
        {
            if (userAdapter == null)
                setupUserDataAdapter();

            userCmd.CommandText = "Select * from UserInfo order by userID";

            try
            {
                if (!(tblUserData == null))
                    tblUserData.Clear();
                userAdapter.Fill(tblUserData);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
            }
        }

        public static void DeleteUser(string ID)
        {
            userCmd.CommandText = "Delete UserInfo " +
                                  "Where UserID = '" + ID + "'";

            try
            {
                con.Open();
                userCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        public static void InsertUser(string theID, string newName, string newEmail, string newPassword, string newRole, double newPhone, string newAddress)
        {
            userCmd.CommandText = "INSERT INTO UserInfo(userID, Name, Email, Password, Role, Phone, Address) values('" + theID + "', '" +
                                  newName + "', '" +
                                  newEmail + "', '" + newPassword + "', '" + newRole + "', '" + newPhone + "', '" + newAddress +  "')";


            try
            {
                con.Open();
                userCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
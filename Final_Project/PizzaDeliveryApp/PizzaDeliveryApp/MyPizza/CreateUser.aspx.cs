﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PizzaDeliveryApp.MyPizza
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from Table where UserID = '" + userIdBox.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            //   int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //  if(temp == 1)
            //  {
            //      Response.Write("User already exists!");
            //    }
            //   conn.Close();

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUser.aspx");
            Response.Write("Page has been reset");
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
            try
            {
                Guid newBuild = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserInfo(userID, Name, Email, Password, Role, Phone, Address) values(@UID, @UName, @UEmail, @UPass, @URole, @UPhone, @UAddress)";

                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Uname", nameBox.Text);
                com.Parameters.AddWithValue("@UID", userIdBox.Text);
                com.Parameters.AddWithValue("@UPass", passwordBox.Text);
                com.Parameters.AddWithValue("@UEmail", emailBox.Text);
                com.Parameters.AddWithValue("@URole", "User");
                com.Parameters.AddWithValue("@UPhone", txtPhone.Text);
                com.Parameters.AddWithValue("@UAddress", txtAddress.Text);
                com.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("Registration is done!");
                conn.Close();
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "Error: " + ex.Message;
                lblErrorMessage.Visible = true;
            }

        }
    }
}
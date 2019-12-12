using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaDeliveryApp.Admin
{
    public partial class SpecialtyPizzaManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["CurrentUser"].ToString() == "")
            {
                Response.Redirect(@"/MyPizza\Login.aspx");
            }
            else
            {
                lblLoginName.Text = "Logged in as: " + Application["CurrentUser"].ToString();
                btnLoginStatus.Text = "Logout";
            }
        }

        protected void btnLoginStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"/MyPizza\Login.aspx");
            Application["CurrentUser"] = "";
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            try
            {
                txtMessage.Text = "Specialty pizza was added to the database.";
            }
            catch (Exception Ex)
            {
                txtMessage.Text = Ex.Message.ToString();
            }
        }
        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            try
            {
                txtMessage.Text = "Specialty pizza was deleted from the database.";
            }
            catch (Exception Ex)
            {
                txtMessage.Text = Ex.Message.ToString();
            }
        }
        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            try
            {
                txtMessage.Text = "Specialty pizza information was updated.";
            }
            catch (Exception Ex)
            {
                txtMessage.Text = Ex.Message.ToString();
            }
        }
    }
}
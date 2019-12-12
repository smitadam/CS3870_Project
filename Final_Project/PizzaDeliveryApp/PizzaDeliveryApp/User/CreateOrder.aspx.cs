using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaDeliveryApp.User
{
    public partial class Create_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["CurrentUser"].ToString() == "")
            {
                Response.Redirect(@"/MyPizza\Login.aspx");
            }
            else
            {
                lblLoginName.Text = "Delivery for: " + Application["CurrentUser"].ToString();
                btnLoginStatus.Text = "Logout";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void btnLoginStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"/MyPizza\Login.aspx");
            Application["CurrentUser"] = "";
        }
    }
}
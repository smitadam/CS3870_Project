using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaDeliveryApp.User
{
    public partial class SpecialtyOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["CurrentUser"].ToString() == "")
            {
                Response.Redirect(@"/MyPizza\Login.aspx");
            }
            else
            {
                lblLoginName.Text = Application["CurrentUser"].ToString();
                btnLoginStatus.Text = "Logout";
            }
        }

        protected void btnLoginStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"/MyPizza\Login.aspx");
            Application["CurrentUser"] = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {

        }
    }
}
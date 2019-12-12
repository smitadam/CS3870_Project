using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaDeliveryApp.User
{
    public partial class CheckoutPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Data.SQLShoppingCartClass.getShoppingCartData();
            if (Application["CurrentUser"].ToString() == "")
            {
                Response.Redirect(@"/MyPizza\Login.aspx");
            }
            else
            {
                lblLoginName.Text = "Delivery for: " + Application["CurrentUser"].ToString();
                btnLoginStatus.Text = "Logout";
                txtTotal.Text = string.Format("{0:C}", Double.Parse(Application["CartTotal"].ToString()));
            }
        }

        protected void btnLoginStatus_Click(object sender, EventArgs e)
        {
            Data.SQLShoppingCartClass.DeleteShoppingCart();
            Response.Redirect(@"/MyPizza\Login.aspx");
            Application["CurrentUser"] = "";
            Application["CartTotal"] = "0.00";
        }
    }
}
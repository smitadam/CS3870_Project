using System;
using System.Globalization;

namespace PizzaDeliveryApp.User
{
    public partial class SpecialtyOrder : System.Web.UI.Page
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
            }
        }

        protected void btnLoginStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"/MyPizza\Login.aspx");
            Application["CurrentUser"] = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            CalculateTotals();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void CalculateTotals()
        {

            try
            {
                Double price = Double.Parse(DetailsViewSpecialtyPizza.Rows[2].Cells[1].Text.ToString(), NumberStyles.Currency);
                string productName = DetailsViewSpecialtyPizza.Rows[0].Cells[1].Text.ToString().Trim();
                string description = DetailsViewSpecialtyPizza.Rows[1].Cells[1].Text.ToString().Trim();
                string size = ddSize.SelectedValue.ToString().Trim();

                if (size == "Small")
                    price = price / 1.4;
                else if (size == "Large")
                    price = price * 1.4;
                else if (size == "X-large")
                    price = price * 1.96;

                Data.SQLShoppingCartClass.InsertProduct(productName, size, description, price);
                Application["CartTotal"] = price + Double.Parse(Application["CartTotal"].ToString());
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }

        }
    }
}
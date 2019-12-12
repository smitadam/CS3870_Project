using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace PizzaDeliveryApp
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //Product Initialization

            //User Initialization
            Application["CurrentUser"] = "";

            //Checkout Initialization
            Application["ProductName"] = "";
            Application["ProductPrice"] = "";
            Application["ProductSize"] = "";
            Application["ProductDescription"] = "";
            Application["Computed"] = false;

            Application["CartTotal"] = Double.Parse("0.00");

        }

        void Application_End(object sender, EventArgs e)
        {
            Data.SQLShoppingCartClass.getShoppingCartData();
            Data.SQLShoppingCartClass.DeleteShoppingCart();
        }
        void Session_End(object sender, EventArgs e)
        {
            Data.SQLShoppingCartClass.getShoppingCartData();
            Data.SQLShoppingCartClass.DeleteShoppingCart();
        }
    }
}
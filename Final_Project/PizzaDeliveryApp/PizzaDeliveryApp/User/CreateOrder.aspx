<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateOrder.aspx.cs" Inherits="PizzaDeliveryApp.User.Create_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="/Style.css" type="text/css" media="screen" />
    <title></title>
    <style type="text/css">



h1 {
    font-family: "Times New Roman",Georgia,serif;
    text-align: center;
    text-decoration: underline;
    color: blue;
}

h2 {
    font-family: Impact, Charcoal, sans-serif;
    text-align: center;
    font-style: italic;
    color: black;
}

h3 {
    color: black;
    font-weight: 800;
    font-family: Helvetica;
    align-items: center;
    text-align: center;
}

.LoginName {
    position: relative;
    margin-right: 200px;
}

.LoginStatus {
    position: relative;
    margin-left: 200px;
    top: 0px;
    left: 1px;
}
table{
    border: none;
}
        
table {
align-items: center;
}

td{
    border: none;
    text-align: center;
}
    
td, th {
    color: black;
    border: none;
}

.TreeView {
    position: absolute;
    left: 39px;
    top: 172px;
    height: 63px;
    width: 182px;
}

a {
    text-decoration: none;
    color: blue;
    text-align: right;
}

        .auto-style1 {
            width: 63%;
            height: 123px;
            margin-left: 219px;
        }
        .auto-style3 {
            height: 23px;
            width: 462px;
        }
        .auto-style4 {
            width: 462px;
        }
        .auto-style5 {
            width: 462px;
            height: 30px;
        }
        .auto-style7 {
            width: 462px;
            height: 1px;
        }
        .auto-style8 {
            height: 23px;
            width: 484px;
        }
        .auto-style9 {
            width: 484px;
        }
        .auto-style10 {
            width: 484px;
            height: 30px;
        }
        .auto-style11 {
            width: 484px;
            height: 1px;
        }
    </style>
</head>
<body>
    <form id="CreateOrderForm" runat="server">
         <h1>Pie Peddlers</h1>
         <h2>Create Order</h2>
         <h3>
            <asp:Label ID="lblLoginName" class="LoginName" runat="server" Text="LoginName"></asp:Label>
               
            <asp:Button class="LoginStatus" ID="btnLoginStatus" runat="server" BackColor="White" BorderStyle="None" Font-Underline="True" ForeColor="Blue" Text="LoginStatus" OnClick="btnLoginStatus_Click" UseSubmitBehavior="False" />
         </h3>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Create your Pizza:"></asp:Label>
            <asp:TreeView class="TreeView" ID="TreeView1" runat="server" ExpandImageToolTip="" DataSourceID="SiteMapDataSourceUser">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="Default" NavigateUrl="Default.aspx" Target="Default.aspx"  Text="All Products" />
                    <asp:TreeNodeBinding DataMember="Shopping" NavigateUrl="Member\Shopping.aspx" Target="Shopping.aspx" Text="Shopping" Value="Shopping" />
                    <asp:TreeNodeBinding DataMember="Updating" NavigateUrl="Admin\Updating.aspx" Text="Updating" Value="Updating" />
                    <asp:TreeNodeBinding DataMember="Checkout" NavigateUrl="Member\Checkout.aspx" Text="Checkout" Value="Checkout" />
                </DataBindings>
                <Nodes>
                    <asp:TreeNode Text="All Products" Value="New Node" NavigateUrl="Default.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Updating" Value="New Node" NavigateUrl="Admin\Updating.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Shopping" Value="New Node" NavigateUrl="Member\Shopping.aspx"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="Member\Checkout.aspx" Text="Checkout" Value="New Node"></asp:TreeNode>
                </Nodes>
            </asp:TreeView>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Small</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>Large</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Crust Type:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Thin Crust</asp:ListItem>
                            <asp:ListItem>Pan</asp:ListItem>
                            <asp:ListItem>Deep Dish</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Topping 1:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Mushrooms</asp:ListItem>
                            <asp:ListItem>Onions</asp:ListItem>
                            <asp:ListItem>Sausage</asp:ListItem>
                            <asp:ListItem>Bacon</asp:ListItem>
                            <asp:ListItem>Extra Cheese</asp:ListItem>
                            <asp:ListItem>Black Olives</asp:ListItem>
                            <asp:ListItem>Green Peppers</asp:ListItem>
                            <asp:ListItem>Pineapple</asp:ListItem>
                            <asp:ListItem>Spinach</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Topping 2:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Mushrooms</asp:ListItem>
                            <asp:ListItem>Onions</asp:ListItem>
                            <asp:ListItem>Sausage</asp:ListItem>
                            <asp:ListItem>Bacon</asp:ListItem>
                            <asp:ListItem>Extra Cheese</asp:ListItem>
                            <asp:ListItem>Black Olives</asp:ListItem>
                            <asp:ListItem>Green Peppers</asp:ListItem>
                            <asp:ListItem>Pineapple</asp:ListItem>
                            <asp:ListItem>Spinach</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="Topping 3:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Mushrooms</asp:ListItem>
                            <asp:ListItem>Onions</asp:ListItem>
                            <asp:ListItem>Sausage</asp:ListItem>
                            <asp:ListItem>Bacon</asp:ListItem>
                            <asp:ListItem>Extra Cheese</asp:ListItem>
                            <asp:ListItem>Black Olives</asp:ListItem>
                            <asp:ListItem>Green Peppers</asp:ListItem>
                            <asp:ListItem>Pineapple</asp:ListItem>
                            <asp:ListItem>Spinach</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:SiteMapDataSource ID="SiteMapDataSourceUser" runat="server" SiteMapProvider="SiteMapDataSourceUser" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="btnCheckout" runat="server" OnClick="btnCheckout_Click" Text="Checkout" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style11">
                        <asp:Button ID="btnReset" runat="server" Text="Back" Width="79px" OnClick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

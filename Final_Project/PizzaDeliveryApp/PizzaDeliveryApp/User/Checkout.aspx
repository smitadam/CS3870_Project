<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="PizzaDeliveryApp.User.CheckoutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
table{
    border: none;
}
td{
    border: none;
}
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

        .auto-style1 {
            margin-left: 421px;
            margin-top: 0px;
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

        .auto-style3 {
            left: 43px;
            top: 172px;
        }
    </style>
</head>
<body>
    <form id="CheckoutForm" runat="server">
        <div>
            <h1>Pie Peddlers</h1>
            <h2>Checkout</h2>
            <h3>
                <asp:Label ID="lblLoginName" class="LoginName" runat="server" Text="LoginName"></asp:Label>
                <asp:Button class="LoginStatus" ID="btnLoginStatus" runat="server" BackColor="White" BorderStyle="None" Font-Underline="True" ForeColor="Blue" Text="LoginStatus" OnClick="btnLoginStatus_Click" UseSubmitBehavior="False" Visible="False" />
            </h3>
        </div>
    </form>
        <form id="DefaultForm" runat="server">
            <asp:SiteMapDataSource ID="SiteMapDataSourceUser" runat="server" SiteMapProvider="SiteMapDataSourceUser" />
            <asp:TreeView class="TreeView" ID="TreeView1" runat="server" ExpandImageToolTip="" DataSourceID="SiteMapDataSourceUser" CssClass="auto-style3">
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
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Width="238px">
            </asp:GridView>
    </form>
    <form id="form1" runat="server">
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="PizzaDeliveryApp.User.CheckoutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.btn {
    border: 3px;
    border-style: outset;
    padding: 5px;
    color: black;
    border-color: grey;
    background-color: ButtonFace;
    font-family: Helvetica;
    font-weight: 800;
    text-decoration: none;
    font-size: 14px;
}
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
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>

        <form id="CheckoutForm" runat="server">
            <h1>Pie Peddlers</h1>
            <h2>Checkout</h2>
            <h3>
                <asp:Label ID="lblLoginName" class="LoginName" runat="server" Text="LoginName"></asp:Label>
                <asp:Button class="LoginStatus" ID="btnLoginStatus" runat="server" BackColor="White" BorderStyle="None" Font-Underline="True" ForeColor="Blue" Text="LoginStatus" OnClick="btnLoginStatus_Click" UseSubmitBehavior="False" />
            </h3>
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
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSourceShopping" Height="204px" Width="576px" align="center" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ProductName" HeaderText="Pizza" SortExpression="ProductName" />
                            <asp:BoundField DataField="ProductSize" HeaderText="Size" SortExpression="ProductSize" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Price" DataFormatString="{0:C}" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceShopping" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT * FROM [ShoppingCart]"></asp:SqlDataSource>
        <br />
             <table class="auto-style1" align="center">
             <tr>
                 <td class="auto-style4">
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Text="Total: " align="center"></asp:Label>
                     <asp:TextBox ID="txtTotal" runat="server" align="center"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button  ID="btnPayment" CssClass="btn" runat="server" Text="Proceed to payment" Width="192px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
    </form>
</body>
</html>

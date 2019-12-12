<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialtyOrder.aspx.cs" Inherits="PizzaDeliveryApp.User.SpecialtyOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="/Style.css" type="text/css" media="screen" />
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
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="SpecialtyOrderForm" runat="server">
         <h1>Pie Peddlers</h1>
         <h2>Order Specialty Pizzas</h2>
         <h3>
            <asp:Label ID="lblLoginName" class="LoginName" runat="server" Text="LoginName"></asp:Label>
               
            <asp:Button class="LoginStatus" ID="btnLoginStatus" runat="server" BackColor="White" BorderStyle="None" Font-Underline="True" ForeColor="Blue" Text="LoginStatus" OnClick="btnLoginStatus_Click" UseSubmitBehavior="False" />
         </h3>
        <div>
            <asp:SqlDataSource ID="SqlDataSourceSpecialtyPizzas" runat="server" ConnectionString="<%$ ConnectionStrings:UserInfoConnectionString %>" SelectCommand="SELECT [Description], [UnitPrice], [ProductName] FROM [SpecialtyPizzas]"></asp:SqlDataSource>
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
            <asp:SiteMapDataSource ID="SiteMapDataSourceUser" runat="server" />
        </div>
        <asp:DetailsView ID="DetailsViewSpecialtyPizza" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductName" DataSourceID="SqlDataSourceSpecialtyPizzas" height="200px" width="534px" position="relative"  margin-left="25%" Align="center">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ProductName" HeaderText="Specialty Pizza:" SortExpression="ProductName" ReadOnly="True" >
                    <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Font-Bold="True" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description:" SortExpression="Description" >
                    <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Font-Bold="True" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price:" SortExpression="UnitPrice" DataFormatString="{0:C}" >
                    <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Bottom" Font-Bold="True" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                    </asp:BoundField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
        <br />
         <table class="auto-style1">
             <tr>
                 <td>
                     <asp:Label ID="lblPricing" runat="server" Font-Italic="True" Font-Size="Small" Text="Pricing above is for medium pizzas. (Pricing will vary based on size)."></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lblSize" runat="server" Font-Bold="True" Text="Select Size: "></asp:Label>
                     <asp:DropDownList ID="ddSize" runat="server" Height="17px" Width="135px">
                         <asp:ListItem>Small</asp:ListItem>
                         <asp:ListItem>Medium</asp:ListItem>
                         <asp:ListItem>Large</asp:ListItem>
                         <asp:ListItem>X-Large</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="btnAdd" CssClass="btn" runat="server" OnClick="btnAdd_Click" Text="Add to Order" Width="175px" Height="34px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="btnCheckout" Cssclass="btn" runat="server" OnClick="btnCheckout_Click" Text="Proceed to Checkout" Width="176px" Height="37px" />
                 </td>
             </tr>
         </table>
    </form>
</body>
</html>

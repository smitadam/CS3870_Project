<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="PizzaDeliveryApp.MyPizza.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="/Style.css"/>
    <title>Pie Peddlers - User Registration</title>
    <style type="text/css">
        table{
            border: none;
        }
        td{
            border: none;
        }
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="CreateUserForm" runat="server">
        <h1>Pie Peddlers</h1>
        <h2>User Registration</h2>
            <table class="auto-style1" align="center" style:="" width="60%">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="User Registration"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="ErrorMessage" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ControlToValidate="NameBox" ErrorMessage="Name is Required!" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="nameBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="UserIDFieldValidator" runat="server" ControlToValidate="userIdBox" ErrorMessage="User ID is required!" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="UserID:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="userIdBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ControlToValidate="emailBox" ErrorMessage="Email Address is required!" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailBox" ErrorMessage="Email Address has to be valid email format" Font-Italic="True" Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="emailBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="PasswordFieldValidator" runat="server" ControlToValidate="passwordBox" ErrorMessage="Password is Required!" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="passwordBox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="ConfirmPassFieldValidator" runat="server" ControlToValidate="confirmPasswordBox" ErrorMessage="Confirm Password is Required!" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordBox" ControlToValidate="confirmPasswordBox" ErrorMessage="Confirm Password must match the one entered above!" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="confirmPasswordBox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required!" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="Red">Phone number is required!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPhone" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required!" Font-Bold="True" Font-Italic="True" Font-Size="Small" Font-Underline="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button CssClass="btn" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" Width="102px" />
                    <asp:Button CssClass="btn" ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" UseSubmitBehavior="False" CausesValidation="False" Width="104px" />
                </td>
            </tr>
            </table>
    </form>
</body>
</html>

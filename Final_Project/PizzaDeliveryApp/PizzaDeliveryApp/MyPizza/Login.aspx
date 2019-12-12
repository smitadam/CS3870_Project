﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PizzaDeliveryApp.MyPizza.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="/Style.css"/>
    <title>Pie Peddlers - Login</title>
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
        .auto-style2 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="LoginForm" runat="server">
        <h1>Pie Peddlers</h1>
        <h2>Login</h2>
        <table align="center" style:="" width="40%">
            <tr>
                <td class="auto-style1">
                    <asp:HyperLink Target="_self" ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="CreateUser.aspx">Register new user</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblLogIn" runat="server" Text="Log In"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;<asp:Label ID="lblUserName" runat="server" Text="User Name: "></asp:Label>
                    <asp:TextBox ID="txtUserName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server" ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:  "></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="cbRemember" runat="server" Text="Remember me next time." />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="ErrorMessage" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button CssClass="btn" ID="btnLogin" runat="server" Height="35px" OnClick="btnLogin_Click" Text="Log In" Width="93px" />
                </td>
            </tr>
            </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Kannada.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style>
    body {
    background-size: 100% auto ;
    }
        </style>
</head>
<body background="imgback.jpg">
    <div class="row">
     <div class="col-sm-4"></div>
      <div class="col-sm-4">
          <h1>Sign Up here</h1>
    <form id="form1" role="form" runat="server">
        <div class="form-group">
        <label for="name"> Name: </label>
        <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required." ControlToValidate="Name"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <label for="username">Enter Username:</label>
        <asp:TextBox ID="Username" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username is required" ControlToValidate="Username"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <label for="password"> Password:</label>
        <asp:TextBox ID="Password" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="Password"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <label for="confpassword"> Password:</label>
        <asp:TextBox ID="Confpassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Password again" ControlToValidate="Confpassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Two Passwords do not match" ControlToCompare="Password" ControlToValidate="Confpassword"></asp:CompareValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-default" />
    </form>
          </div>
        <div class="col-sm-4"></div>
        </div>
</body>
</html>

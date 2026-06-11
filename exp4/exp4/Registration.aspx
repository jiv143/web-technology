<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="exp4.Registration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #36d1dc, #5b86e5);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            width: 450px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

<div class="card text-center">

<h2>📝 Registration</h2>

<asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Name"></asp:TextBox>

<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email"></asp:TextBox>

<!-- Country -->
<asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control mb-3" AutoPostBack="true"></asp:DropDownList>

<!-- State -->
<asp:DropDownList ID="ddlState" runat="server" CssClass="form-control mb-3" AutoPostBack="true"></asp:DropDownList>

<!-- City -->
<asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control mb-3"></asp:DropDownList>

<asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn btn-primary w-100" OnClick="btnSubmit_Click"/>

</div>

</form>

</body>
</html>
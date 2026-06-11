<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="exp5.Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            padding: 40px;
            border-radius: 20px;
            width: 400px;
            background: white;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .btn-custom {
            background: #667eea;
            border: none;
            color: white;
        }

        .btn-custom:hover {
            background: #5a67d8;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">
    <div class="card text-center">

        <h2>Login</h2>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" TextMode="Password" Placeholder="Password"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-custom w-100" OnClick="btnLogin_Click" />

        <a href="Signup.aspx" class="mt-3 d-block">Create new account</a>

    </div>
</form>

</body>
</html>
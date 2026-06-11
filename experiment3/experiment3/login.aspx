<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="experiment3.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .login-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            width: 400px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #667eea;
        }

        .btn-custom {
            background: linear-gradient(45deg, #667eea, #764ba2);
            border: none;
            padding: 12px;
            border-radius: 30px;
            color: white;
        }

        .grid-container {
            margin-top: 40px;
            width: 70%;
        }

        .table {
            border-radius: 15px;
            overflow: hidden;
            background: rgba(255,255,255,0.95);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .table-dark {
            background: linear-gradient(45deg, #667eea, #764ba2) !important;
            color: white;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="login-card text-center">

        <div class="logo mb-3">⚡ Electronics Mart</div>

        <h2>🔐 Login</h2>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" TextMode="Password" Placeholder="Password"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-custom w-100" OnClick="btnLogin_Click" />

        <a href="sign_up.aspx" class="d-block mt-3">Create new account</a>

    </div>

    <div class="grid-container mx-auto">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover text-center"
            HeaderStyle-CssClass="table-dark">
        </asp:GridView>
    </div>

</form>

</body>
</html>
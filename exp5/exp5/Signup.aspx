<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="exp5.Signup" %>

<!DOCTYPE html>
<html>
<head>
    <title>Create Account</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: linear-gradient(135deg, #43cea2, #185a9d);
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
            background: #43cea2;
            border: none;
            color: white;
        }

        .btn-custom:hover {
            background: #2ebf91;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">
    <div class="card text-center">
        
        <h2>Create Account</h2>

        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Full Name"></asp:TextBox>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" TextMode="Password" Placeholder="Password"></asp:TextBox>

        <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-custom w-100" OnClick="btnSignup_Click" />

        <a href="Login.aspx" class="mt-3 d-block">Already have an account? Login</a>

    </div>
</form>

</body>
</html>
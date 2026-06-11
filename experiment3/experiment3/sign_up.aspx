<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="experiment3.sign_up" %>

<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .signup-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            width: 420px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.25);
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: #4facfe;
        }

        .btn-custom {
            background: linear-gradient(45deg, #4facfe, #00c6ff);
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
            background: linear-gradient(45deg, #4facfe, #00c6ff) !important;
            color: white;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="signup-card text-center">
        
        <div class="logo mb-3">⚡ Electronics Mart</div>

        <h2>🔑 Sign Up</h2>

        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Full Name"></asp:TextBox>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" TextMode="Password" Placeholder="Password"></asp:TextBox>

        <asp:Button ID="btnSignup" runat="server" Text="Create Account" CssClass="btn btn-custom w-100" OnClick="btnSignup_Click" />

        <a href="Login.aspx" class="d-block mt-3">Already have an account? Login</a>

    </div>

    <div class="grid-container mx-auto">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover text-center"
            HeaderStyle-CssClass="table-dark">
        </asp:GridView>
    </div>

</form>

</body>
</html>
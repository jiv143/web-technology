<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" 
Inherits="Experiment2.Login" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            width: 400px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }

        .login-card h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px;
        }

        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 10px rgba(102,126,234,0.4);
        }

        .btn-custom {
            background: linear-gradient(45deg, #667eea, #764ba2);
            border: none;
            padding: 12px;
            border-radius: 30px;
            color: white;
            transition: 0.3s;
        }

        .btn-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 20px rgba(0,0,0,0.3);
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #667eea;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .link {
            margin-top: 15px;
            display: block;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="login-card text-center">

        <div class="logo mb-3">⚡Electronics Mart</div>

        <h2>🔐Login</h2>

        <!-- Email -->
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" Placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvEmail" 
            runat="server" 
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"
            ForeColor="Red"
            Display="Dynamic" />

        <!-- Password -->
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-2" TextMode="Password" Placeholder="Password"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvPassword" 
            runat="server" 
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required"
            ForeColor="Red"
            Display="Dynamic" />

        <!-- Summary (optional) -->
        <asp:ValidationSummary 
            ID="ValidationSummary1" 
            runat="server" 
            ForeColor="Red" />

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-custom w-100 mt-3" OnClick="btnLogin_Click" />

        <a href="Signup.aspx" class="link">Create new account</a>

    </div>

</form>

</body>
</html>
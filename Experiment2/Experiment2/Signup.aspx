<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Experiment2.Signup" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .signup-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            width: 400px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }

        .signup-card h2 {
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px;
            transition: 0.3s;
        }

        .form-control:focus {
            border-color: #4facfe;
            box-shadow: 0 0 10px rgba(79,172,254,0.4);
        }

        .btn-custom {
            background: linear-gradient(45deg, #4facfe, #00c6ff);
            border: none;
            padding: 12px;
            border-radius: 30px;
            font-weight: 500;
            transition: 0.3s;
        }

        .btn-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 20px rgba(0,0,0,0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #4facfe;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="signup-card text-center">
        
        <div class="logo mb-3">⚡Electronics Mart</div>

        <h2>🔑Create Account</h2>

        <!-- Name -->
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-2" Placeholder="Full Name"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvName" 
            runat="server" 
            ControlToValidate="txtName"
            ErrorMessage="Name is required"
            ForeColor="Red"
            Display="Dynamic" />

        <!-- Email -->
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" Placeholder="Email Address"></asp:TextBox>
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

        <!-- Summary -->
        <asp:ValidationSummary 
            ID="ValidationSummary1" 
            runat="server" 
            ForeColor="Red" />

        <asp:Button ID="btnSignup" runat="server" Text="Create Account" CssClass="btn btn-custom w-100 mt-3" OnClick="btnSignup_Click" />

    </div>

</form>

</body>
</html>
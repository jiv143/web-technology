+*<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExchangeUI.aspx.cs" Inherits="Experiment10.ExchangeUI" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Experiment 10 | Web Service</title>
    <style>
        body { background-color: #f0f4f8; font-family: 'Segoe UI', sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 450px; text-align: center; border: 1px solid #d1d9e6; }
        h2 { color: #2c3e50; margin-bottom: 20px; }
        .input-box { width: 100%; padding: 12px; margin: 15px 0; border: 2px solid #cbd5e0; border-radius: 8px; font-size: 16px; box-sizing: border-box; }
        .btn-invoke { background-color: #3182ce; color: white; border: none; padding: 14px; width: 100%; border-radius: 8px; font-size: 18px; cursor: pointer; transition: 0.3s; }
        .btn-invoke:hover { background-color: #2b6cb0; }
        .result-label { display: block; margin-top: 25px; padding: 15px; background: #ebf8ff; color: #2c5282; border-radius: 8px; border-left: 5px solid #3182ce; font-weight: 600; min-height: 20px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Real-Time Data Exchange</h2>
            <p style="color: #718096;">Enter USD amount to call the ASMX Web Service</p>
            
            <asp:TextBox ID="txtUSD" runat="server" CssClass="input-box" placeholder="Enter Amount (e.g. 100)"></asp:TextBox>
            
            <asp:Button ID="btnInvoke" runat="server" Text="Invoke Web Service" CssClass="btn-invoke" OnClick="btnInvoke_Click" />
            
            <asp:Label ID="lblResult" runat="server" CssClass="result-label" Text="Waiting for service call..."></asp:Label>
        </div>
    </form>
</body>
</html>
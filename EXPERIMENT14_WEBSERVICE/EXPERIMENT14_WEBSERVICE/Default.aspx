<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EXPERIMENT14_WEBSERVICE.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Electronic Mart - Billing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card shadow mx-auto" style="max-width: 450px; border-radius: 15px;">
                <div class="card-header bg-primary text-white text-center">
                    <h3>Mart Bill Calculator</h3>
                </div>
                <div class="card-body p-4">
                    <label class="form-label">Enter Product Price (₹):</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control mb-3" placeholder="e.g. 50000"></asp:TextBox>
                    
                    <asp:Button ID="btnCalculate" runat="server" Text="Generate Bill" 
                        CssClass="btn btn-success w-100 shadow-sm" OnClick="btnCalculate_Click" />
                    
                    <hr />
                    
                    <div class="bg-white p-3 border rounded">
                        <p class="mb-1">Tax (18% GST): <strong>₹ <asp:Label ID="lblTax" runat="server" Text="0"></asp:Label></strong></p>
                        <h4 class="text-primary">Final Total: ₹ <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></h4>
                    </div>
                </div>
                <div class="card-footer text-muted text-center small">
                    Powered by MartService.asmx
                </div>
            </div>
        </div>
    </form>
</body>
</html>
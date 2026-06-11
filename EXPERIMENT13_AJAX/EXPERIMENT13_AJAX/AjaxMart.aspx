<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxMart.aspx.cs" Inherits="EXPERIMENT13_AJAX.AjaxMart" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>AJAX Partial Rendering</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .main-card { background: white; padding: 30px; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center">
                    <h2 class="mb-4 text-primary">Electronic Mart - AJAX View</h2>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="main-card">
                                <label class="form-label fw-bold">Select Electronic Item:</label>
                                <asp:DropDownList ID="ddlProducts" runat="server" CssClass="form-select mb-3" 
                                    AutoPostBack="true" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
                                    <asp:ListItem Text="-- Choose Product --" Value="0" />
                                    <asp:ListItem Text="Gaming Laptop" Value="85000" />
                                    <asp:ListItem Text="Wireless Earbuds" Value="2500" />
                                    <asp:ListItem Text="Smart Watch" Value="5500" />
                                </asp:DropDownList>

                                <div class="alert alert-success">
                                    <h4 class="m-0">Price: ₹ <asp:Label ID="lblPrice" runat="server" Text="0"></asp:Label></h4>
                                </div>

                                <p class="text-muted small">
                                    Panel Last Updated: <strong><%= DateTime.Now.ToString("HH:mm:ss") %></strong>
                                </p>
                                <asp:Button ID="btnRefresh" runat="server" Text="Manual Refresh" CssClass="btn btn-primary w-100" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <div class="mt-4 p-3 border rounded bg-white shadow-sm">
                        <p class="mb-0 text-danger">
                            Full Page Clock: <strong><%= DateTime.Now.ToString("HH:mm:ss") %></strong>
                        </p>
                        <small class="text-muted">Notice this clock only changes if you manually refresh the whole browser.</small>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="exp8.ListViewPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Electronics Mart - ListView</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { background: #f4f6f9; }
        .container { margin-top: 40px; }
        .title { text-align: center; margin-bottom: 20px; color: #0d6efd; font-weight: bold; }
        .card { border-radius: 12px; }
        .product-card img { height: 150px; object-fit: cover; }
    </style>
</head>

<body>
<form id="form1" runat="server">

<div class="container">

    <h2 class="title">⚡ Electronics Mart (ListView)</h2>

    <!-- ================= FORM ================= -->
    <div class="card p-3 mb-4 shadow-sm">
        <h5>➕ Add Product</h5>

        <div class="row g-2">

            <div class="col-md-2">
                <asp:TextBox ID="txtID" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
            </div>

            <div class="col-md-2">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
            </div>

            <div class="col-md-2">
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="Price"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
            </div>

            <!-- ✅ IMAGE UPLOAD -->
            <div class="col-md-2">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div>

            <div class="col-md-1 d-grid">
                <asp:Button ID="btnAdd" runat="server" Text="Add"
                    CssClass="btn btn-success"
                    OnClick="btnAdd_Click" />
            </div>

        </div>
    </div>

    <!-- ================= LISTVIEW ================= -->
    <asp:ListView ID="ListView1" runat="server">

        <LayoutTemplate>
            <div class="row">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="col-md-3 mb-4">
                <div class="card product-card shadow-sm p-2">

                    <img src='<%# Eval("Images") %>' class="card-img-top" />

                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("ProductName") %></h5>
                        <p class="card-text">₹ <%# Eval("Price") %></p>
                        <p class="small text-muted"><%# Eval("Description") %></p>
                    </div>

                </div>
            </div>
        </ItemTemplate>

    </asp:ListView>

</div>

</form>
</body>
</html>
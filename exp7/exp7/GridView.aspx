<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="exp7.GridViewPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Electronics Mart Products</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f4f6f9;
        }

        .container {
            margin-top: 40px;
        }

        .title {
            text-align: center;
            margin-bottom: 20px;
            color: #0d6efd;
            font-weight: bold;
        }

        .grid th {
            background: #0d6efd;
            color: white;
        }

        img {
            height: 60px;
        }

        .card {
            border-radius: 10px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

<div class="container">

    <!-- TITLE -->
    <h2 class="title">⚡ Electronics Mart Products</h2>

    <!-- ================= INSERT FORM ================= -->
    <div class="card p-3 mb-4 shadow-sm">
        <h5>➕ Add New Product</h5>

        <div class="row g-2">

            <div class="col-md-2">
                <asp:TextBox ID="txtID" runat="server" CssClass="form-control" placeholder="Product ID"></asp:TextBox>
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

            <div class="col-md-2">
                <asp:TextBox ID="txtImage" runat="server" CssClass="form-control" placeholder="Image Path"></asp:TextBox>
            </div>

            <div class="col-md-1 d-grid">
                <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success"
                    OnClick="btnAdd_Click" />
            </div>

        </div>
    </div>

    <!-- ================= DISPLAY TABLE ================= -->
    <div class="card p-3 shadow-sm">

        <h5 class="mb-3">📦 Product List</h5>

        <asp:GridView ID="GridView1" runat="server"
            CssClass="table table-bordered table-striped grid"
            AutoGenerateColumns="False">

            <Columns>

                <asp:BoundField DataField="ProductID" HeaderText="ID" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:BoundField DataField="Price" HeaderText="Price (₹)" />
                <asp:BoundField DataField="Description" HeaderText="Description" />

                <asp:ImageField DataImageUrlField="Images"
                    HeaderText="Image"
                    ControlStyle-Height="60" />

            </Columns>

        </asp:GridView>

    </div>

</div>

</form>

</body>
</html>
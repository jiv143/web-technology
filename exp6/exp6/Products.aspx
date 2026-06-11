<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="exp6.Products" %>

<!DOCTYPE html>
<html>
<head>
    <title>Electronics Mart</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f4f6f9;
        }

        .navbar {
            background: linear-gradient(45deg, #0d6efd, #6610f2);
        }

        .navbar-brand {
            color: white;
            font-weight: bold;
            font-size: 22px;
        }

        .hero {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 40px;
            text-align: center;
            border-radius: 15px;
            margin-bottom: 30px;
        }

        .product-card {
            height: 100%;
            padding: 20px;
            border-radius: 15px;
            background: white;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .product-card:hover {
            transform: translateY(-8px);
        }

        .product-img {
            height: 160px;
            object-fit: contain;
        }

        .price {
            color: #0d6efd;
            font-weight: bold;
            font-size: 18px;
        }

        .desc {
            font-size: 14px;
            color: #555;
        }

        .btn-buy {
            background: linear-gradient(45deg, #0d6efd, #6610f2);
            color: white;
            border-radius: 25px;
            padding: 6px 15px;
            border: none;
        }

        hr {
            margin: 40px 0;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

<!-- 🔷 NAVBAR -->
<nav class="navbar px-4">
    <span class="navbar-brand">⚡ Electronics Mart</span>
</nav>

<div class="container mt-4">

<!-- 🔷 HERO -->
<div class="hero">
    <h2>Welcome to Electronics Mart</h2>
    <p>Best gadgets at best prices 🔥</p>
</div>

<!-- 🔥 DATALIST (HORIZONTAL SCROLL) -->
<h4>🛒 Featured Products</h4>

<div style="overflow-x:auto; white-space:nowrap;">

<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
    <ItemTemplate>
        <div class="product-card d-inline-block m-2" style="min-width:220px;">
            <img src='<%# Eval("Image") %>' class="product-img"/>
            <h6 class="mt-2"><%# Eval("ProductName") %></h6>
            <p class="desc"><%# Eval("Description") %></p>
            <p class="price">₹ <%# Eval("Price") %></p>
            <button class="btn-buy">Buy</button>
        </div>
    </ItemTemplate>
</asp:DataList>

</div>

<hr />

<!-- 🔥 REPEATER (PERFECT GRID) -->
<h4>📦 Product Details</h4>

<div class="row">

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>

        <div class="col-md-4 mb-4">

            <div class="product-card">

                <img src='<%# Eval("Image") %>' class="product-img mb-2"/>

                <h5><%# Eval("ProductName") %></h5>

                <p class="desc"><%# Eval("Description") %></p>

                <p class="price">₹ <%# Eval("Price") %></p>

                <button class="btn-buy">Buy</button>

            </div>

        </div>

    </ItemTemplate>
</asp:Repeater>

</div>

</div>

</form>

</body>
</html>
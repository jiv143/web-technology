<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Experiment1.Contact_us" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container mt-5">
    <h2 class="text-center mb-4">Contact Electronics Mart</h2>

    <div class="row">
        <!-- FORM -->
        <div class="col-md-6">

            <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Enter Name"></asp:TextBox>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Enter Email"></asp:TextBox>

            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control mb-3" Placeholder="Enter Phone"></asp:TextBox>

            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control mb-3" TextMode="MultiLine" Rows="5" Placeholder="Enter Message"></asp:TextBox>

            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-danger w-100" OnClick="btnSubmit_Click" />

        </div>

        <!-- IMAGE -->
        <div class="col-md-6">
            <img src="Images/contact.jpg" style="width:100%; border-radius:10px;">
        </div>
    </div>
</div>

</asp:Content>
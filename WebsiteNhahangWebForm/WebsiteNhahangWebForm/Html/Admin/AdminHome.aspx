<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/admin.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <span style="font: bold 25px 'Times New Roman', Times, serif;">Đây là trang HomeAdmin</span>
        <a href="../index.aspx">Về trang chủ</a>
    </div>
</asp:Content>

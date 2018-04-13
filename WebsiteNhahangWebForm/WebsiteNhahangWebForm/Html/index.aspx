<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Jquery/jquery.carousel-3d.default.css" rel="stylesheet" />
    <script src="../Jquery/jquery.js"></script>
    <script src="../Jquery/jquery.resize.js"></script>
    <script src="../Jquery/jquery.waitforimages.js"></script>
    <script src="../Jquery/modernizr.js"></script>
    <script src="../Jquery/jquery.carousel-3d.js"></script>

    <script src="../JVS/jquery-3.1.1.js"></script>
    <script src="../JVS/boostrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="wrapper" style="height: 536px;">
        <div data-carousel-3d>
            <img src="../Image/BigImage/1.png" width="635" height="452">
            <img src="../Image/BigImage/2.png" width="635" height="452">
            <img src="../Image/BigImage/3.png" width="635" height="452">
            <img src="../Image/BigImage/4.png" width="635" height="452">
            <img src="../Image/BigImage/5.png" width="635" height="452">
            <img src="../Image/BigImage/6.png" width="635" height="452">
            <img src="../Image/BigImage/7.png" width="635" height="452">
            <img src="../Image/BigImage/8.png" width="635" height="452">
        </div>
    </div>
    <script>
        setInterval(function () {
            $("[data-next-button]").click();

        }, 5000);
    </script>
</asp:Content>

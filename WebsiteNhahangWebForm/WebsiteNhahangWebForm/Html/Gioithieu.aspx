<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Gioithieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/gioithieu.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="gioithieu">
        	<div class="gioithieu-cnt">
            	<div class="title">
                	<label>Chào mừng bạn đến với nhà hàng LeeO Restaurant</label>
                </div>
                
                <br /><br />
                <div class="content">	
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/Image/gioithieu/{0}", Eval("ImageGT")) %>' Width="855px" />
                            <br />
                            <br />
                            <asp:Label ID="TTGTLabel" runat="server" Text='<%# Eval("TTGT") %>' />
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [TTGT], [ImageGT] FROM [GioiThieu]"></asp:SqlDataSource>
                </div>
                <div class="map">
                    Hãy đến với Lee0 Restaurant để tận hưởng những món ăn và không khí đầm ấm tuyệt vời <br/><br/>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.557413074365!2d106.65834731449598!3d10.996741258096115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDU5JzQ4LjMiTiAxMDbCsDM5JzM3LjkiRQ!5e0!3m2!1svi!2s!4v1505763297278" width="855" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

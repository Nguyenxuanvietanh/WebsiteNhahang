<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLDatBan.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLDatBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qldatban.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content">
        <div class="qldatban" style="min-height: 812px">
            <asp:Label ID="Label1" runat="server" Text="Quản Lý Đặt Bàn" Font-Bold="True" Font-Size="25px"></asp:Label><br /><br /><br />
            <div style="margin-left: 250px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDatBan" DataSourceID="SqlDataSource1" Width="768px">
                    <Columns>
                        <asp:BoundField DataField="MaDatBan" HeaderText="Mã Đặt Bàn" InsertVisible="False" ReadOnly="True" SortExpression="MaDatBan" />
                        <asp:BoundField DataField="MaTV" HeaderText="Mã TV" SortExpression="MaTV" />
                        <asp:BoundField DataField="NgayDat" HeaderText="Ngày Đặt" SortExpression="NgayDat" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-ForeColor="red"/>
                        <asp:BoundField DataField="DatNgay" HeaderText="Đặt Ngày" SortExpression="DatNgay" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="GioDat" HeaderText="Giờ Đặt" SortExpression="GioDat" ItemStyle-ForeColor="red" />
                        <asp:BoundField DataField="SoKhach" HeaderText="Số Khách" SortExpression="SoKhach" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaDatBan], [MaTV], [NgayDat], [DatNgay], [GioDat], [SoKhach] FROM [DatBan]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</asp:Content>

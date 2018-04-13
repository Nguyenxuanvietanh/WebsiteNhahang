<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLDatHang.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qldathang.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="min-height: 812px">
    <div class="content">
        <div class="qldathang" style="min-height: 792px; text-align: center">
            <asp:Label ID="Label1" runat="server" Text="Quản lý đơn đặt hàng" Font-Bold="True" Font-Size="25px"></asp:Label>
            <br /><br /><br />
            <div style="margin-left: 365px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDDH" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CellPadding="10">
                <Columns>
                    <asp:BoundField DataField="MaDDH" HeaderText="Mã DDH" InsertVisible="False" ReadOnly="True" SortExpression="MaDDH" />
                    <asp:BoundField DataField="NgayDat" HeaderText="Ngày Đặt" SortExpression="NgayDat" />
                    <asp:BoundField DataField="NgayGiao" HeaderText="Ngày Giao" SortExpression="NgayGiao" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="TongTienHD" HeaderText="Tổng Tiền HĐ" SortExpression="TongTienHD" ItemStyle-ForeColor="red" DataFormatString="{0:0,0 VNĐ}"/>
                    <asp:TemplateField HeaderText="Chi Tiết">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/chitiet.jpg" CommandName="chitiet" CommandArgument=<%# Eval("MaDDH") %> Width="35px" Height="35px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaDDH], [NgayDat], [NgayGiao], [TongTienHD] FROM [DonDatHang]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</asp:Content>

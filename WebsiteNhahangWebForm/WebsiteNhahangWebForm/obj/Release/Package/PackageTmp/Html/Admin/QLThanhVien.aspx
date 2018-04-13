<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLThanhVien.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLThanhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qlthanhvien.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content">
        <asp:Label ID="Label1" runat="server" Text="Quản Lý Thành Viên" Font-Size="25px" Font-Bold="True"></asp:Label>
        <br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaTV" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" CellPadding="10">
            <Columns>
                <asp:BoundField DataField="MaTV" HeaderText="Mã TV" InsertVisible="False" ReadOnly="True" SortExpression="MaTV" />
                <asp:BoundField DataField="TenTV" HeaderText="TênTV" SortExpression="TenTV" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" SortExpression="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" SortExpression="GioiTinh" />
                <asp:BoundField DataField="EmailTV" HeaderText="Email TV" SortExpression="EmailTV" />
                <asp:BoundField DataField="SdtTV" HeaderText="Sdt TV" SortExpression="SdtTV" />
                <asp:BoundField DataField="DiaChiTV" HeaderText="Địa chỉ TV" SortExpression="DiaChiTV" />
                <asp:BoundField DataField="MaLoaiTV" HeaderText="Mã Loại TV" SortExpression="MaLoaiTV" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Nangcap" ImageUrl="~/Image/up.gif" CommandArgument='<%# Eval("MaTV") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/down.gif" CommandName="Hacap" CommandArgument='<%# Eval("MaTV") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT * FROM [ThanhVien]"></asp:SqlDataSource>
    </div>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="SuaTTSP.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.SuaTTSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/suaTTSP.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 456px;
            text-align: right;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content">
        
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="CẬP NHẬT THÔNG TIN SP"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Loại sản phẩm: </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlLoaiSP" runat="server" CssClass="input" DataSourceID="SqlDataSource1" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaLoaiSP], [TenLoaiSP] FROM [LoaiSP]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Tên sản phẩm:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTenSP" runat="server" CssClass="input"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSP" CssClass="validation" ErrorMessage="(*)" ValidationGroup="btnSua"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Giá sản phẩm:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtGiaSP" runat="server" CssClass="input"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGiaSP" CssClass="validation" ErrorMessage="(*)" ValidationGroup="btnSua"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGiaSP" CssClass="validation" ErrorMessage="Giá trị không hợp lệ (< 10 tr)" MaximumValue="10000000" MinimumValue="0" ValidationGroup="btnSua" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Ngày cập nhật: </td>
                <td class="auto-style3">
                    <asp:Label ID="lblNgayCN" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mô tả: </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMota" runat="server" CssClass="input"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMota" CssClass="validation" ErrorMessage="(*)" ValidationGroup="btnSua"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hình ảnh</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FUimage" runat="server" CssClass="input" />
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FUimage" CssClass="validation" ErrorMessage="(*)" ValidationGroup="btnSua"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FUimage" CssClass="validation" ErrorMessage="Phải chọn file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" ValidationGroup="btnSua"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Cập Nhật" OnClick="Button1_Click" ValidationGroup="btnSua" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </div>
    </form>
</asp:Content>

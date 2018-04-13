<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="TTThanhvien.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.TTKhachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/ttkhachhang.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 246px;
            text-align: right;
        }
        .auto-style4 {
        width: 307px;
    }
        .auto-style5 {
        text-align: center;
        width: 307px;
    }
    .auto-style6 {
        text-align: left;
    }
    .auto-style7 {
        width: 246px;
        text-align: right;
        height: 21px;
    }
    .auto-style8 {
        text-align: center;
        width: 307px;
        height: 21px;
    }
    .auto-style9 {
        height: 21px;
    }
        .auto-style10 {
            text-align: center;
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="form">
            <form id="form1" runat="server">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center; font-weight: bold; font-size: 25px;">THÔNG TIN KHÁCH HÀNG</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Tên đăng nhập: </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblTenDN" runat="server" Font-Italic="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu: </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="********"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="hplDoimk" runat="server" Font-Italic="True" ForeColor="Blue">Thay đổi</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Họ tên:</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTen" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Email: </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="validation" ErrorMessage="Không được bỏ trống">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="validation" ErrorMessage="Định dạng không đúng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Số điện thoại: </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSdt" runat="server" CssClass="input" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="Không được bỏ trống">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="Định dạng không đúng" ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDiachi" runat="server" CssClass="input" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDiachi" CssClass="validation" ErrorMessage="Không được bỏ trống">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnCapnhat" runat="server" Text="Cập Nhật" CssClass="button" OnClick="btnCapnhat_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" CssClass="button2" Font-Italic="True" ForeColor="Blue" OnClick="Button1_Click" Text="Đăng xuất" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

            </form>
        </div>
    </div>
</asp:Content>

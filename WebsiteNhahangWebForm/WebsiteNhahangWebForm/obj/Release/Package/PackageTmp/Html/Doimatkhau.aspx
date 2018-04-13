<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Doimatkhau.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Doimatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/doimatkhau.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 18px;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            height: 18px;
            width: 283px;
        }
        .auto-style5 {
            width: 283px;
            text-align: right;
        }
        .auto-style8 {
            width: 258px;
            text-align: center;
        }
    .auto-style9 {
        text-align: left;
    }
        .auto-style10 {
            width: 258px;
        }
        .auto-style11 {
            height: 18px;
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="doimk">
        <div class="content">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center; font-weight: bold; font-size: 25px;">ĐỔI MẬT KHẨU&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Tên đăng nhập: </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblTenDN" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Mật khẩu: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtMatkhau" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMatkhau" CssClass="validation" ErrorMessage="Không được bỏ trống">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Mật khẩu mới</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtMKmoi" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMKmoi" CssClass="validation" ErrorMessage="Không được bổ trống">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Nhập lại mật khẩu mới: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNhaplai" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNhaplai" CssClass="validation" ErrorMessage="Không được bỏ trống">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMKmoi" ControlToValidate="txtNhaplai" CssClass="validation" ErrorMessage="Nhập lại không đúng"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblThongbao" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnCapNhat" runat="server" CssClass="button" Text="Cập Nhật" OnClick="btnCapNhat_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
    </form>
</asp:Content>

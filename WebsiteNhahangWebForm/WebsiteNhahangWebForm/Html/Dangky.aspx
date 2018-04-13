<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/dangky.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 318px;
            text-align: right;
        }
        .auto-style5 {
            width: 248px;
        }
        .auto-style6 {
            width: 318px;
            text-align: right;
            height: 27px;
        }
        .auto-style7 {
            width: 248px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
        <div class="dangky">
        	<div class="content" style="padding:35px">
            	
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="3">
                            <span style="font-size: 25px; font-weight: bold; font-family: 'Times New Roman'">Đăng Ký</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Tên đăng nhập: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtTenDN" runat="server" CssClass="input" OnTextChanged="txtTenDN_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            <asp:Label ID="lbltbtk" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Mật khẩu: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtMatkhau" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhau" CssClass="validation" ErrorMessage="(*) "></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Họ tên: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtTen" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTen" CssClass="validation" ErrorMessage="(*) "></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Ngày sinh:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNgaysinh" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Giới tính: </td>
                        <td class="auto-style7">
                            <asp:RadioButtonList ID="rbtnGioitinh" runat="server" CssClass="input" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Email: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="validation" ErrorMessage="Định dạng Email không đúng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Số điện thoại: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtSdt" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="Định dạng sđt không đúng" ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Địa chỉ: </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtDiachi" runat="server" CssClass="input" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDiachi" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="lblBaoLoi" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:Button ID="btnDangky" runat="server" Text="Đăng Ký" CssClass="button" OnClick="btnDangky_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            	
            </div>
        </div>
        </form>
</asp:Content>

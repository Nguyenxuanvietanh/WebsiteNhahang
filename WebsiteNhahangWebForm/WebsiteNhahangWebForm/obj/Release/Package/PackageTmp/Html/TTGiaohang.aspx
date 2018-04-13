<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="TTGiaohang.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.TTGiaohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/ttgiaohang.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 365px;
            text-align: right;
        }
        .auto-style3 {
            width: 333px;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="giaohang">
        	<div class="content">
                <span style="font: bold 25px 'Times New Roman', Times, serif;">Thông Tin Giao Hàng</span><br /><br /><br />
            	
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">Ngày giao :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtNgayGiao" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNgayGiao" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Người nhận :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtNguoiNhan" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNguoiNhan" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Số điện thoại : </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSdt" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSdt" CssClass="validation" ErrorMessage="Định dạng sdt không đúng" ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Địa chỉ : </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtDiaChi" runat="server" CssClass="input" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiaChi" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Tổng tiền :</td>
                        <td class="auto-style3">
                            <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="btnDatHang" runat="server" CssClass="button" Text="Đặt Hàng" OnClick="btnDatHang_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            	
            </div>
        </div>
    </form>
</asp:Content>

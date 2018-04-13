<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dathang.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Dathang" %>
<%@ Register assembly="Recaptcha" namespace="Recaptcha" tagprefix="recaptcha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/dathang.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 272px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
            width: 289px;
        }
        .auto-style6 {
            width: 272px;
            text-align: center;
        }
        .auto-style7 {
            width: 289px;
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
            width: 289px;
            height: 21px;
        }
        .auto-style9 {
            width: 272px;
            text-align: center;
            height: 21px;
        }
        .auto-style10 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="dathang">ư
        <div class="content">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Label ID="Label1" runat="server" Text="Thông Tin Giao Hàng" Font-Bold="True" Font-Size="25px"></asp:Label><br/><br/><br/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ngày giao :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNgaygiao" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNgaygiao" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Người nhận : </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNguoinhan" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNguoinhan" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Số điện thoại nhận :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtSdtnhan" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSdtnhan" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSdtnhan" CssClass="validation" ErrorMessage="Định dạng sdt không đúng" ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Địa chỉ nhận :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDcnhan" runat="server" CssClass="input" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDcnhan" CssClass="validation" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Mã xác nhận: </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblRandom" runat="server" CssClass="captcha" Font-Bold="False" Font-Italic="True" Font-Size="30px"></asp:Label>
                    &nbsp;
                        <asp:TextBox ID="txtxacnhan" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="3">
                        <asp:Button ID="btnDathang" runat="server" Text="Đặt Hàng" CssClass="button" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</asp:Content>

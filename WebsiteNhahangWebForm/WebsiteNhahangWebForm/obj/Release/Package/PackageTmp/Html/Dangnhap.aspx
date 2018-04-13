<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/login.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 291px;
            text-align: right;
        }
        .auto-style4 {
            width: 259px;
        }
        .auto-style5 {
            width: 291px;
            text-align: right;
            height: 32px;
        }
        .auto-style6 {
            width: 259px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
    .auto-style8 {
        width: 291px;
        text-align: right;
        height: 21px;
    }
    .auto-style9 {
        width: 259px;
        height: 21px;
    }
    .auto-style10 {
        height: 21px;
    }
    </style>
    <%--<script>
        question = confirm("Bạn có muốn truy cập với tư cách Admin");
        console.log(question);
        if (question == true)
        {
            //Session["TenTV"] = dt.Rows[0][1].ToString();
            location.href = "index.aspx";
        }
        else if (question == false) {
            location.href = "Admin/AdminHome.aspx";
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%= Hoidap %>
    <form id="form1" runat="server">
        <div class="login">
        <div class="content">
            	
            	
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center; font: bold 25px 'Times New Roman', Times, serif;">Đăng Nhập&nbsp;</td>
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
                    <td class="auto-style5">Tài khoản:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTenDN" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa điền tên đăng nhập" ControlToValidate="txtTenDN" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu: </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMatkhau" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhau" CssClass="validation" ErrorMessage="Bạn chưa điền mật khẩu"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblBaoLoi" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Button ID="btnDangnhap" runat="server" CssClass="button" Text="Đăng Nhập" OnClick="btnDangnhap_Click" />
                        
                    </td>
                </tr>
            </table><br />
            	<i style="margin-left: 225px;">Nếu bạn chưa có tài khoản.Hãy <a href="Dangky.aspx" style="color: red;">đăng ký tại đây</a> !!!</i>
            	<img src="../Image/hoavan.gif" width="204" height="50" style="margin: 180px 0 0 310px;"/>
        </div>
    </div>
    </form>
</asp:Content>

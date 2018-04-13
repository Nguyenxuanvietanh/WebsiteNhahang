<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="SuaTTLoaiSP.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.SuaTTLoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/suattloaisp.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 91px;
            text-align: left;
        }
        .auto-style13 {
            width: 285px;
            text-align: right;
        }
        .auto-style14 {
            width: 63px;
            text-align: right;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="height: 825px;">
    <div class="content" style="margin-left: 250px;">
            <table class="auto-style1">
                <tr>
                    <td colspan="6" style="text-align: center">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="20px" Text="Sửa TT loại sản phẩm"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Loại sản phẩm:</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="ddlLoaisp" runat="server" CssClass="input" DataSourceID="SqlDataSource1" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT * FROM [LoaiSP]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style14">Tên mới: </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtTenmoi" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td class="auto-style22">Mã Menu: </td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="ddlMamenu" runat="server" CssClass="input" DataSourceID="SqlDataSource3" DataTextField="Menu" DataValueField="MaMenu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaMenu], [Menu] FROM [Menu]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenmoi" ErrorMessage="(*)" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="6">
                        <asp:Button ID="btnCapnhat" runat="server" CssClass="button" Text="Cập Nhật" OnClick="btnCapnhat_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
    </form>
</asp:Content>

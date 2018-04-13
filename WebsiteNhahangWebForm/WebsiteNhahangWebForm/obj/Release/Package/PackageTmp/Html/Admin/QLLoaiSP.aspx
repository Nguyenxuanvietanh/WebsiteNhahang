<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLLoaiSP.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLLoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qlloaisp.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 103%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 212px;
        }
        .auto-style5 {
            height: 21px;
        }
        .auto-style7 {
            width: 204px;
            text-align: right;
        }
        .auto-style8 {
            width: 269px;
        }
        .auto-style9 {
            width: 204px;
            text-align: center;
        }
        .auto-style10 {
            width: 66px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content">
        <div class="themloaisp">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" Text="Thêm loại sản phẩm"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Tên loại sản phẩm:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTenLoaiSP" runat="server" CssClass="input"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Menu:</td>
                    <td style="text-align: left" class="auto-style8">
                        <asp:DropDownList ID="ddlMenu" runat="server" CssClass="input" DataSourceID="SqlDataSource1" DataTextField="Menu" DataValueField="MaMenu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaMenu], [Menu] FROM [Menu]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenLoaiSP" ErrorMessage="(*)" ForeColor="White" ValidationGroup="them"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
                        <asp:Button ID="btnThem" runat="server" CssClass="button" Text="Thêm" OnClick="btnThem_Click" ValidationGroup="them" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        
        <div class="list-loaisp" style="height: 538px; overflow: auto;">
            <asp:Label ID="Label2" runat="server" Text="Quản lý loại sản phẩm" Font-Bold="True" Font-Size="20px"></asp:Label><br /><br /><br />
            <div style="margin-left: 340px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource2" Width="547px" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại SP" ReadOnly="True" SortExpression="MaLoaiSP" />
                    <asp:BoundField DataField="TenLoaiSP" HeaderText="Tên Loại SP" SortExpression="TenLoaiSP" />
                    <asp:BoundField DataField="MaMenu" HeaderText="Mã Menu" SortExpression="MaMenu" />
                    <asp:TemplateField>
                        <ItemTemplate>
                                <asp:ImageButton runat="server" ImageUrl="~/Image/btnSua.png" CommandArgument='<%# Eval("MaLoaiSP") %>' CommandName="Sua"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="~/Image/btnXoa.jpg" CommandArgument='<%# Eval("MaLoaiSP") %>' CommandName="Xoa"></asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT * FROM [LoaiSP]"></asp:SqlDataSource>
        
            </div>
        </div>
    </div>
    </form>
</asp:Content>

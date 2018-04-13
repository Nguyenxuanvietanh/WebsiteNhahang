<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLSanPham.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qlsanpham.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 175px;
        }
        .auto-style7 {
            width: 194px;
        }
        .auto-style8 {
            width: 229px;
        }
        .auto-style9 {
            width: 233px;
            text-align: left;
        }
        .auto-style10 {
            width: 194px;
            text-align: left;
        }
        .auto-style11 {
            width: 175px;
            height: 40px;
        }
        .auto-style12 {
            width: 194px;
            text-align: left;
            height: 40px;
        }
        .auto-style13 {
            width: 233px;
            text-align: left;
            height: 40px;
        }
        .auto-style14 {
            width: 229px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
        <div class="content">
        	<span style="font: bold 25px 'Times New Roman', Times, serif;">Quản Lý Sản Phẩm</span>
        	<div class="themsp">
            	<span style="font: bold 20px 'Times New Roman', Times, serif">Thêm sản phẩm</span><br /><br /><br />
            	
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">Loại sản phẩm: </td>
                        <td class="auto-style7">
                            <asp:DropDownList ID="ddlLoaiSP" runat="server" CssClass="input" DataSourceID="SqlDataSource2" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [TenLoaiSP], [MaLoaiSP] FROM [LoaiSP]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style5">Tên sản phẩm:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtTenSP" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                        <td class="auto-style8">Giá: </td>
                        <td>
                            <asp:TextBox ID="txtGia" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSP" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGia" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGia" ErrorMessage="Giá trị không hợp lệ (< 10 tr)" ForeColor="White" MaximumValue="10000000" MinimumValue="0" ValidationGroup="them" Type="Integer"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Ngày cập nhật: </td>
                        <td class="auto-style12">
                            <asp:Label ID="lblNgay" runat="server" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style11">Hình ảnh: </td>
                        <td class="auto-style13">
                            <asp:FileUpload ID="FUimage" runat="server" CssClass="input" />
                        </td>
                        <td class="auto-style14">Mô tả:</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtMoTa" runat="server" CssClass="input"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FUimage" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FUimage" ErrorMessage="Phải chọn file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" ValidationGroup="them" ForeColor="White"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMoTa" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td colspan="4">
                            <asp:Button ID="btnThem" runat="server" CssClass="button" Text="Thêm Sản Phẩm" OnClick="btnThem_Click" ValidationGroup="them" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            	
            </div>
                <br /><br />
            <div class="listsp">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Width="1195px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="9" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
                        <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                        <asp:BoundField DataField="NgayCapNhat" HeaderText="Ngày Cập Nhật" SortExpression="NgayCapNhat" />
                        <asp:BoundField DataField="HinhAnh" HeaderText="Hình Ảnh" SortExpression="HinhAnh" />
                        <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" SortExpression="MoTa" />
                        <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại SP" SortExpression="MaLoaiSP" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/btnSua.png" CommandArgument='<%# Eval("MaSP") %>' CommandName="Sua" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/btnXoa.jpg" CommandArgument='<%# Eval("MaSP") %>' CommandName="Xoa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaSP], [TenSP], [Gia], [NgayCapNhat], [HinhAnh], [MoTa], [MaLoaiSP] FROM [SanPham]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                
            </div>
        </div>
        </form>
</asp:Content>

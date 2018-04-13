<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLKM.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.QLKM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/qlkm.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
    }
    .auto-style4 {
        width: 440px;
        text-align: right;
    }
    .auto-style5 {
        width: 264px;
    }
    .auto-style6 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content">
        <div class="themkm">
            <b style="font-size: 20px">Thêm thông tin khuyến mại</b><br /><br />

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Tiêu đề: </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtTieude" runat="server" CssClass="input" Width="220px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTieude" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Thông tin:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtThongtin" runat="server" CssClass="input" Width="220px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtThongtin" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Hình ảnh:</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FUImage" runat="server" CssClass="input" Width="220px" />
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FUImage" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FUImage" ErrorMessage="Phải chọn file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" ValidationGroup="them" ForeColor="White"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Chi tiết:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtChitiet" runat="server" CssClass="input" Width="220px"></asp:TextBox>
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtChitiet" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Hình ảnh CT:</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FUImage1" runat="server" CssClass="input" Width="220px" />
                    </td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FUImage1" ErrorMessage="(*)" ValidationGroup="them" ForeColor="White"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FUImage1" ErrorMessage="Phải chọn file ảnh" ValidationExpression="^([0-9a-zA-Z_\-~ :\\])+(.jpg|.JPG|.jpeg|.JPEG|.bmp|.BMP|.gif|.GIF|.png|.PNG)$" ValidationGroup="them" ForeColor="White"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Button ID="btnThem" runat="server" CssClass="button" OnClick="btnThem_Click" Text="Thêm" ValidationGroup="them" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <div class="listkm">
            <div style="margin-left: 250px">
                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKM" DataSourceID="SqlDataSource1" OnRowCommand="GridView_RowCommand" CellPadding="10">
                    <Columns>
                        <asp:BoundField DataField="MaKM" HeaderText="MaKM" InsertVisible="False" ReadOnly="True" SortExpression="MaKM" />
                        <asp:BoundField DataField="TitleKM" HeaderText="TitleKM" SortExpression="TitleKM" />
                        <asp:BoundField DataField="InfoKM" HeaderText="InfoKM" SortExpression="InfoKM" />
                        <asp:BoundField DataField="ImageKM" HeaderText="ImageKM" SortExpression="ImageKM" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/btnSua.png" CommandArgument='<%# Eval("MaKM") %>' CommandName="Sua" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/btnXoa.jpg" CommandArgument='<%# Eval("MaKM") %>' CommandName="Xoa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT [MaKM], [TitleKM], [InfoKM], [ImageKM] FROM [KhuyenMai]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</form>
</asp:Content>

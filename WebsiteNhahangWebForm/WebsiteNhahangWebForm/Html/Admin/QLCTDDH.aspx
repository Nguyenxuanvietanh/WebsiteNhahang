<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="QLCTDDH.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Admin.CTDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../CSS/Admin/chdt.css" rel="stylesheet" />
    <link href="../../CSS/reset.css" rel="stylesheet" />
    <script src="../../Jquery/jquery.min.js"></script>
    <script src="../../Jquery/menuadmin.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 540px;
        }
        .auto-style4 {
            width: 540px;
            text-align: right;
        }
        .auto-style5 {
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="content" style="min-height: 934px;margin-left: 209px">
        <div class="chitiet">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" Text="Chi Tiết Đơn Đặt Hàng"></asp:Label><br /><br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Khách hàng: </td>
                    <td class="auto-style5">
            <asp:Label ID="lblTenKH" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Số điện thoại: </td>
                    <td class="auto-style5">
            <asp:Label ID="lblSdt" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Địa chỉ: </td>
                    <td class="auto-style5">
            <asp:Label ID="lblDiachi" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <%--<table class="auto-style1">
                <tr>
                    <td class="auto-style6">Tên</td>
                    <td class="auto-style7">Giá</td>
                    <td class="auto-style8">Số Lượng</td>
                    <td>Thành Tiền</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblTenSP" runat="server" ></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lblGia" runat="server" ></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lblSoluong" runat="server" ></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblThanhtien" runat="server" ></asp:Label>
                    </td>
                </tr>
            </table>--%>
            
            <div style="margin-left: 435px;">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="423px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            
            </div>
           
        </div>
    </div>
    </form>
</asp:Content>

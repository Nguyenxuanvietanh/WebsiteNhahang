<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoaiSP.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.LoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/loaisanpham.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="loaisp">
            
            <div class="content">
                <div class="title">
                    ---------------------------
                    <asp:Label ID="lblTenloaiSP" runat="server" Font-Bold="True" ForeColor="Black" Font-Size="25px"></asp:Label>
                    ---------------------------
                </div>
                <br /><br />
                <ul>
                    <li>
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/Image/SanPham/{0}", Eval("HinhAnh")) %>' Width="300px" Height="241px" />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenSP") %>' NavigateUrl='<%#"SanPham.aspx?MaSP="+ Eval("MaSP") %>' Font-Bold="True" Font-Size="19px" ForeColor="Blue"></asp:HyperLink>
                                <br />
                    
                                <br />
                                <asp:Label ID="Label1" runat="server" Text='<%# "Giá: " + String.Format("{0:0,0 VNĐ}", Eval("Gia")) %>' ForeColor="Red" Font-Bold="True"></asp:Label>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </li>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </form>
</asp:Content>

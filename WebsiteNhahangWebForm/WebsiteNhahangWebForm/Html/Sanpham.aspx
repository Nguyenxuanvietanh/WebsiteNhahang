<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/sanpham.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="ttsanpham" style="height: 509px;">
        	<div class="ttsp-bgr"></div>
            <div class="ttsp-cnt">
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                         <div class="img-sanpham">
                             <asp:Image ID="Image1" runat="server" width="400" height="392" style="border-radius: 20px;" ImageUrl='<%# string.Format("~/Image/SanPham/{0}", Eval("HinhAnh")) %>' />
                        </div>
                
                        <div class="info-sanpham" style="height: 345px;">
                	        <div class="title" style="text-align:center">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' ForeColor="Red" Font-Size="25" Font-Bold="True"></asp:Label>
                            </div>
                            <br /><br />
                    
                            <b>Giá: </b>&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# String.Format("{0:0,0 VNĐ}", Eval("Gia")) %>'></asp:Label>
                    
                            <br /><br /><br />
                            <b>Mô tả:</b>
                            <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text='<%# Eval("MoTa") %>' ></asp:Label>
                    
                            <br /><br />
                            <br />
                            <br /><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../Image/themsp.jpg" width="50" height="50" OnClick="ImageButton1_Click" />

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Image/cart-icon.png" width="50" height="50" OnClick="ImageButton2_Click" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Thêm vào giỏ hàng"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Xem giỏ hàng"></asp:Label>
                        </div>
                        <br />
                        <img src="../Image/hoavan.gif" width="204" height="50" />
                    </ItemTemplate>
                </asp:DataList>
            </div>
        	
        </div>
    </form>
</asp:Content>

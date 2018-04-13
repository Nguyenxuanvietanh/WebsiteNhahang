<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/giohang1.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="giohang">
        	
        	<div class="ct-giohang" style="min-height: 470px;">
            	<span style="font: bold 25px 'Times New Roman', Times, serif; color: red;">Thông Tin Giỏ Hàng</span><br /><br /><br />
                <div class="info">
                    <i style="margin-left:-495px;">Hiện có <asp:Label ID="lblsoluong" runat="server" ForeColor="Red" Font-Italic="True" Font-Bold="True"></asp:Label> sản phẩm trong giỏ hàng của bạn !</i><br /><br />
                    <asp:GridView ID="GridView1" runat="server" BorderColor="White" AutoGenerateColumns="false" Font-Bold="True" Width="801px" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ProductId"  HeaderText="Mã SP" Visible="True" />
                            <asp:ImageField DataImageUrlField="HinhAnh" DataImageUrlFormatString="~\Image\SanPham\{0}" HeaderText="Hình Ảnh" ControlStyle-CssClass="img-sp">
                            </asp:ImageField>
                            <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                            <asp:BoundField DataField="Gia" HeaderText="Giá" DataFormatString="{0:0,0 VNĐ}" ItemStyle-ForeColor="red" />
                            <asp:TemplateField HeaderText="Số Lượng">
                                <ItemTemplate>
                                        <asp:TextBox ID="txtSoLuong" runat="server" Columns="5" Text='<%# Eval("SoLuong") %>' TextMode="Number" ></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle CssClass="input" />
                            </asp:TemplateField>

                            <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" DataFormatString="{0:0,0 VNĐ}" ItemStyle-ForeColor="red" />
                            <asp:TemplateField HeaderText="Hủy">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnRemove" CommandName="Remove" runat="server" CommandArgument='<%# Eval("ProductId") %>' ImageUrl="~/Image/btnXoa.jpg"></asp:ImageButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                    </asp:GridView>
                    
                    <br /><br />
                    <div style="text-align: left;float: left;margin-top: 35px;font-style: italic;color: red">
                        <asp:Label ID="Label1" runat="server" Text="(*) Khi bạn thay đổi số lượng sản phẩm trong giỏ hàng, vui lòng nhấn nút Update trước khi hoàn tất !!!"></asp:Label>
                    </div>
                    <div style="text-align: right">
                        <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/Image/Update.png" OnClick="ImageButton3_Click" />
                    </div>
                    <div class="line">
                    </div>
                    <br />
                    <div class="thanhtoan">
                    	<span>Tổng tiền: </span>
                        <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" ForeColor="Red" ></asp:Label><br /><br />
                        
                        <button style="background-color:#fff; border:none; cursor:pointer">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/iconCartPro_.png" Width="50px" Height="50px" OnClick="ImageButton1_Click" /><br /><br />
                        	<b>Tiếp tục mua hàng</b>
                        </button>
                        
                        <button style="background-color:#fff; border:none; cursor:pointer; margin-left: 30px;">
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/images.jpg" Width="50px" Height="50px" OnClick="ImageButton2_Click" /><br /><br />
                        	<b>Hoàn tất mua hàng</b>
                        </button>
                    </div>
                    
                </div>
            </div>
        </div>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Khuyenmai.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Khuyenmai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/khuyenmai.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="khuyenmai">
            <div class="khuyenmai-cnt">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div style="background-color: #999; height: 180px; padding: 10px; margin-top: 20px;">
                            <div class="img-km">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/Image/khuyenmai/{0}", Eval("ImageKM")) %>' Width="180px" Height="180px" />
                            </div>
                            <div class="cnt-km">
                                <div class="title-km" style="background-color: #999; width: 560px; padding: 5px; border: 5px solid #fff;">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TitleKM") %>' NavigateUrl='<%#"TTKhuyenMai.aspx?MaKM="+ Eval("MaKM") %>' ForeColor="White" Font-Bold="True" Font-Size="20px"></asp:HyperLink>
                                </div>
                                <div class="text" style="padding: 5px; height: 109px;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("InfoKM") %>'></asp:Label>
                                    <br />
                                    <br />
                                </div>
                                <div class="link-km" style="text-align: right; margin-right: 30px;">
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" Font-Underline="True" NavigateUrl='<%#"TTKhuyenMai.aspx?MaKM="+ Eval("MaKM") %>'>Xem chi tiết</asp:HyperLink>
                                </div>
                                
                            </div>
                        </div>
                        
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataConnectionString %>" SelectCommand="SELECT * FROM [KhuyenMai]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</asp:Content>

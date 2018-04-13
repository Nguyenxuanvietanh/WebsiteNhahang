<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="TTKhuyenmai.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.TTKhuyenmai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/ttkm.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
     <div class="ttkhuyenmai">
        	<div class="ttkm-cnt">
            	<div class="title">
                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                </div>
                <br /><br />
                
                <div class="content">	
                    <asp:DataList ID="DataList1" runat="server" >
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("~/Image/khuyenmai/{0}", Eval("ImageKM")) %>' Width="855px" Height="550px" />
                            <br /><br /><br />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TTKM") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                
            </div>
        </div>
     </form>
</asp:Content>

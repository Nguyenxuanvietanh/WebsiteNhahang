<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Datban.aspx.cs" Inherits="WebsiteNhahangWebForm.Html.Datban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/datban.css" rel="stylesheet" />
    <link href="../CSS/reset.css" rel="stylesheet" />

    <link href="../Jquery/Datban/jquery-ui.css" rel="stylesheet" />
    <script src="../Jquery/Datban/jquery-1.12.4.js"></script>
    <script src="../Jquery/Datban/jquery-ui.js"></script>
      <script>
          $( function() {
              $("#ContentPlaceHolder1_datepicker").datepicker();
          } );
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="datban">
    <div class="datban-bgr"></div>

    <div class="datban-cnt">
        <div class="formdb">
            <br /><br /><br /><br />
            <form style="text-align:left; margin:0px 0 0 130px; color:#fff" runat="server">
                <tr>
                    <th>Khách hàng: </th>
                    <td>
                        <asp:Label ID="lblTenKH" runat="server" style="margin-left:29px; font-weight:bold;"></asp:Label>
                    </td>
                </tr>
                <br /><br /><br />
                <tr>
                    <th>Email:</th>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" style="margin-left:63px; font-weight:bold;"></asp:Label>
                    </td>
                </tr>
                <br /><br /><br />
                <tr>
                    <th>Số điện thoại: </th>
                    <td>
                        <asp:Label ID="lblSdt" runat="server" style="margin-left:17px; font-weight:bold;"></asp:Label>
                    </td>
                </tr>
                <br /><br /><br />
                <tr>
                    <th>Ngày đặt: </th>
                    <td>
                        <asp:TextBox ID="datepicker" runat="server" style="margin-left: 43px;"></asp:TextBox>
                    </td>
                </tr>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="datepicker" ErrorMessage="(*) Mời bạn chọn ngày đặt" Font-Italic="True"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="cpvDate" runat="server" ErrorMessage="(*) Ngày đặt phải sau ngày hiện tại" ControlToValidate="datepicker" Operator="GreaterThan" ForeColor="White" Font-Italic="True"></asp:CompareValidator>
                <br /><br />
                <tr>
                    <th>Giờ đặt: </th>
                     <td>
                        <asp:TextBox ID="txtGioDat" runat="server" style="margin-left:53px;" type="time"></asp:TextBox>
                    </td>
                </tr>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGioDat" ErrorMessage="(*) Mời bạn chọn giờ đặt" Font-Italic="True"></asp:RequiredFieldValidator>
                <br /><br /><br />
                <tr>
                    <th>Số lượng khách: </th>
                     <td>
                        <asp:TextBox ID="txtSoKhach" runat="server" type="number"></asp:TextBox>
                    </td>
                </tr>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoKhach" ErrorMessage="(*) Mời bạn chọn số khách" Font-Italic="True"></asp:RequiredFieldValidator>
                <br /><br /><br />
                <asp:Button ID="btnDatban" runat="server" Text="ĐẶT BÀN" type="submit" style="margin-left:135px; border:2px solid #fff; border-radius:5px; padding:20px;background-color: #333; color: #fff; cursor: pointer; line-height: 5px; " OnClick="Button1_Click" />
            </form>
        </div>

        <div class="datban-img">
            <img src="../Image/datban/imgdatban.jpg" width="400" height="534" />
        </div>
    </div>

</div>
</asp:Content>

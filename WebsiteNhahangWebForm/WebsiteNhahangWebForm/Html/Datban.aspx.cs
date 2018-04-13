using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html
{
    public partial class Datban : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cpvDate.ValueToCompare = DateTime.Now.ToString("MM/dd/yyyy");

            if (Session["TenTV"] == null)
            {
                Response.Write("<script>alert('Bạn cần đăng nhập để sử dụng chức năng này!');location.href = 'Dangnhap.aspx';</script>");
            }
            else
            {
                String matv = Session["MaTV"].ToString();
                DataTable ThanhVien = XLDL.Docbang("Select * from ThanhVien where MaTV=" + matv );
                lblTenKH.Text = ThanhVien.Rows[0][1].ToString();
                lblEmail.Text = ThanhVien.Rows[0][4].ToString();
                lblSdt.Text = ThanhVien.Rows[0][5].ToString();

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int matv = int.Parse(Session["MaTV"].ToString());
                String Ngaydat = datepicker.Text;
                String Giodat = txtGioDat.Text;
                int Sokhach = int.Parse(txtSoKhach.Text);

                String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
                SqlConnection cnn = new SqlConnection(StrCnn);
                cnn.Open();
                string str = "INSERT INTO DatBan(MaTV,NgayDat,GioDat,SoKhach) VALUES ('" + matv + "','" + Ngaydat + "','" + Giodat + "','" + Sokhach + "')";
                XLDL.thuchienlenh(str);

                

                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Credentials = new System.Net.NetworkCredential("nguyenxuanvietanhdh@gmail.com", "vietanhdh");
                SmtpServer.Port = 587;
                SmtpServer.Host = "smtp.gmail.com";
                SmtpServer.EnableSsl = true;
                MailMessage mail = new MailMessage();
                String[] addr = lblEmail.Text.Split(',');
                try
                {
                    mail.From = new MailAddress("nguyenxuanvietanhdh@gmail.com",
                    "Nhà hàng Lee0 Restaurant", System.Text.Encoding.UTF8);
                    Byte i;
                    for (i = 0; i < addr.Length; i++)
                        mail.To.Add(addr[i]);
                    mail.Subject = "Nhà hàng Lee0 Restaurant";
                    mail.Body = "Xin chào " + lblTenKH.Text + " !!! Chúng tôi đã nhận được yêu cầu đặt bàn của bạn vào lúc " + Giodat + " ngày " + Ngaydat  + "dành cho " + Sokhach + " khách. Nếu bạn muốn thay đổi thông tin gì hãy gọi điện trực tiếp đến số điện thoại 0164467169 ! Xin cảm ơn vì đã sử dụng dịch vụ của nhà hàng !";
                    
                    mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                    mail.ReplyTo = new MailAddress(lblEmail.Text);
                    SmtpServer.Send(mail);
                }
                catch (Exception ex) { }


                Response.Write("<script>alert('Đặt bàn thành công'),location.href = 'index.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('Đặt bàn thất bại')</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html
{
    public partial class Dathang : System.Web.UI.Page
    {
        private string A="";
        private Random rd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                    //Label2.Text = DateTime.Now.ToString("dd/MM/yyyy");
                    //cpvNgaygiao.ValueToCompare = DateTime.Now.ToString("dd/MM/yyyy");
                    rd = new Random();
                    //lblRandom.Text = Convert.ToString((char)rd.Next(65, 90));
                    int a = rd.Next(111111, 999999);
                    lblRandom.Text = a.ToString();
               
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            A = lblRandom.Text;
            string B = txtxacnhan.Text;
            int aa = int.Parse(A);
            int bb = int.Parse(B);
            
            if (aa==bb)
            {
                String Nguoinhan = txtNguoinhan.Text;
                String Diachi = txtDcnhan.Text;
                String Sodienthoai = txtSdtnhan.Text;

                string str = "INSERT INTO KhachHang(TenKH,SdtKH,DiaChiKH) VALUES(N'" + Nguoinhan + "',N'" + Sodienthoai + "',N'" + Diachi + "') ";
                XLDL.thuchienlenh(str);



                string str1 = "Select * from KhachHang where TenKH = N'" + Nguoinhan + "' and SdtKH= " + Sodienthoai + "";
                DataTable KH = XLDL.Docbang(str1);
                String MaKh = KH.Rows[0][0].ToString();

                String Ngaygiao = txtNgaygiao.Text;
                string a = Session["tongtien"].ToString();
                string tongtien = a.Substring(0, a.Length - 3);

                string str2 = "INSERT INTO DonDatHang(NgayGiao,MaKH,TongTienHD) VALUES(N'" + Ngaygiao + "'," + MaKh + "," + tongtien + ")";
                DataTable DDH = XLDL.Docbang(str2);

                string str3 = "Select * from DonDatHang where MaKH = '" + MaKh + "'";
                DataTable CTDH = XLDL.Docbang(str3);
                String Maddh = CTDH.Rows[0][0].ToString();

                foreach (CartItems item in ShoppingCart.Instance.Items)
                {
                    string str4 = "INSERT INTO CTDonDatHang(MaDDH,MaSP,SoLuong,MaKH) VALUES(N'" + Maddh + "',N'" + item.ProductId.ToString() + "','" + item.SoLuong + "','" + MaKh + "')";
                    DataTable CTDDH = XLDL.Docbang(str4);
                }

                Response.Write("<script>alert('Đặt hàng thành công ! Chúng tôi sẽ liên lạc với bạn ngay !');location.href = 'index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Mã xác nhận không đúng, mời nhập lại !');location.href = 'Dathang.aspx';</script>");
            }
            
        }


    }
}
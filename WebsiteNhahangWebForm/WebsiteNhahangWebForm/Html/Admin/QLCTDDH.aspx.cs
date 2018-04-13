using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class CTDH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
           
        }
        public void BindData() {
            String maddh = Request.QueryString["MaDDH"];
            DataTable dt = XLDL.Docbang("Select * from CTDonDatHang where MaDDH=" + maddh);
            int n = dt.Rows.Count;
            int masp = int.Parse(dt.Rows[0][2].ToString());
            int soluong = int.Parse(dt.Rows[0][3].ToString());
            String makh = dt.Rows[0][4].ToString();

            //DataTable dt1 = XLDL.Docbang("Select * from SanPham where MaSP=" + masp);
            //String tensp = dt1.Rows[0][1].ToString();
            //int giasp = int.Parse(dt1.Rows[0][2].ToString());

            //int thanhtien = giasp * soluong;

            DataTable dt2 = XLDL.Docbang("Select * from KhachHang where MaKH=" + makh);
            String tenkh = dt2.Rows[0][1].ToString();
            String sdtkh = dt2.Rows[0][3].ToString();
            String dckh = dt2.Rows[0][4].ToString();


            lblTenKH.Text = tenkh;
            lblSdt.Text = sdtkh;
            lblDiachi.Text = dckh;


            //for (int i = 1; i <= n; i++)
            //{
            //    lblTenSP.Text += "<br />" + tensp;
            //    lblGia.Text += "<br />" + giasp.ToString();
            //    lblSoluong.Text += "<br />" + soluong.ToString();
            //    lblThanhtien.Text += "<br />" + thanhtien.ToString();
            //}
            
            
            DataTable dt3 = XLDL.Docbang("Select SanPham.TenSP, SanPham.Gia, CTDonDatHang.SoLuong ,SanPham.Gia * CTDonDatHang.SoLuong as ThanhTien from DonDatHang,CTDonDatHang,SanPham where DonDatHang.MaDDH = " + maddh + " and DonDatHang.MaDDH = CTDonDatHang.MaDDH and CTDonDatHang.MaSP = SanPham.MaSP");
            GridView1.DataSource = dt3;
            GridView1.DataBind();

        }
    }
}
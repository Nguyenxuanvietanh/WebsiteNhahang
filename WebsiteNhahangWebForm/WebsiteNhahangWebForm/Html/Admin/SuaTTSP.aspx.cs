using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class SuaTTSP : System.Web.UI.Page
    {
        int Ngay = DateTime.Now.Day;
        int Thang = DateTime.Now.Month;
        int Nam = DateTime.Now.Year;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ma = Request.QueryString["MaSP"];
                DataTable dt = XLDL.Docbang("Select * from SanPham where MaSP=" + ma);

                ddlLoaiSP.SelectedValue = dt.Rows[0][6].ToString();
                txtTenSP.Text = dt.Rows[0][1].ToString();
                txtGiaSP.Text = dt.Rows[0][2].ToString();
                txtMota.Text = dt.Rows[0][5].ToString();
                lblNgayCN.Text = Nam.ToString() + "/" + Thang.ToString() + "/" + Ngay.ToString();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String loaisp = ddlLoaiSP.SelectedValue.ToString();
            String tensp = txtTenSP.Text;
            String gia = txtGiaSP.Text;
            String ngaycn = lblNgayCN.Text;
            String mota = txtMota.Text;
            String hinhanh = null;

            if (Page.IsValid)
            {
                string fileName = "/Image/SanPham/" + FUimage.FileName;
                string filePath = MapPath(fileName);
                FUimage.SaveAs(filePath);
                hinhanh = FUimage.FileName;

                string ma = Request.QueryString["MaSP"];
                DataTable dt = XLDL.Docbang("Select * from SanPham where MaSP=" + ma);
                string str = "UPDATE SanPham Set TenSP=N'" + tensp + "',Gia='" + gia + "',NgayCapNhat='" + ngaycn + "',HinhAnh='" + hinhanh + "',MoTa='" + mota + "' WHERE MaSP =" + ma + " ";
                XLDL.thuchienlenh(str);

                Response.Write("<script>alert('Cập nhật thành công');location.href = 'QLSanPham.aspx';</script>");
            }
            
        }
    }
}
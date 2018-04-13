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

namespace WebsiteNhahangWebForm.Html
{
    public partial class Doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String ma = Request.QueryString["MaTV"];
                DataTable ThanhVien = XLDL.Docbang("Select * from ThanhVien where MaTV=" + ma);

                lblTenDN.Text = ThanhVien.Rows[0][8].ToString();
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            String ma = Request.QueryString["MaTV"];
            DataTable ThanhVien = XLDL.Docbang("Select * from ThanhVien where MaTV=" + ma);

            String TaiKhoan = ThanhVien.Rows[0][8].ToString();
            String matkhau = ThanhVien.Rows[0][9].ToString();
            String Matkhau = txtMatkhau.Text;
            String Matkhaumoi = txtMKmoi.Text;

            String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
            SqlConnection cnn = new SqlConnection(StrCnn);
            String LenhSQL = "select * from ThanhVien where  Matkhau='" + Matkhau + "'";
            DataTable dt = XLDL.Docbang(LenhSQL);
            if(Matkhau != matkhau)
            {
                lblThongbao.Text = "Mật khẩu nhập không đúng.";
            }
            else
            {
                string str = "UPDATE ThanhVien Set MatKhau='" + Matkhaumoi + "'WHERE TaiKhoan ='" + TaiKhoan + "'";
                XLDL.thuchienlenh(str);
                Response.Write("<script>alert('Đổi mật khẩu thành công!');location.href = 'index.aspx';</script>");
            }
        }
    }
}
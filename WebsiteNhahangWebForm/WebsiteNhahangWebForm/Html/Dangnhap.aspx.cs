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
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string Hoidap = null;
        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
               DataTable dt = XLDL.Docbang("Select * From ThanhVien where TaiKhoan='" + txtTenDN.Text + "' and MatKhau='" + txtMatkhau.Text + "'");
                if (dt.Rows.Count != 0)
                {
                    Session["MaTV"] = dt.Rows[0][0].ToString();
                    string maloai = dt.Rows[0][7].ToString();
                    string a = dt.Rows[0][1].ToString();

                    if (maloai == "0" || maloai == "1")
                    {
                        Session["TenAdmin"] = dt.Rows[0][1].ToString();
                        Response.Redirect("~/HTML/Admin/AdminHome.aspx");
                    }
                    else
                    {
                        Session["TenTV"] = dt.Rows[0][1].ToString();
                        Response.Redirect("~/HTML/index.aspx");
                    }

                    //Session["TenTV"] = dt.Rows[0][1].ToString();
                    //Response.Redirect("~/HTML/index.aspx");
                }
                else
                    lblBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
    
        }
    }
}
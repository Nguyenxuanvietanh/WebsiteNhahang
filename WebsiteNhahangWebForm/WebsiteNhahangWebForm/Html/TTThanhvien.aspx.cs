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
    public partial class TTKhachhang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String matv = Request.QueryString["MaTV"];
                DataTable ThanhVien = XLDL.Docbang("Select * from ThanhVien where MaTV=" + matv);

                lblTenDN.Text = ThanhVien.Rows[0][8].ToString();
                lblTen.Text = ThanhVien.Rows[0][1].ToString();
                txtEmail.Text = ThanhVien.Rows[0][4].ToString();
                txtSdt.Text = ThanhVien.Rows[0][5].ToString();
                txtDiachi.Text = ThanhVien.Rows[0][6].ToString();

                String str = "Select * from ThanhVien where MaTV=" + "'" + matv.ToString() + "'";
                DataTable Thanhvien = XLDL.Docbang(str);
                hplDoimk.NavigateUrl = "~/Html/Doimatkhau.aspx?MaTV=" + Thanhvien.Rows[0][0];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["TenTV"] = null;
            Response.Redirect("index.aspx");
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            String matv = Request.QueryString["MaTV"];
            string str = "Update ThanhVien set EmailTV='"+ txtEmail.Text +"', SdtTV='"+ txtSdt.Text +"',DiaChiTV=N'"+ txtDiachi.Text +"' where MaTV=" + matv;
            XLDL.thuchienlenh(str);

            Response.Write("<script>alert('Cập nhật thành công');location.href = 'index.aspx';</script>");
        }
    }
}
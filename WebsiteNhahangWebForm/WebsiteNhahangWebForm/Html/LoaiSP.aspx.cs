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
    public partial class LoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String MaLoaiSP = Request.QueryString["MaLoaiSP"];
            DataTable tb = XLDL.Docbang("SELECT * FROM SanPham Where SanPham.MaLoaiSP=" + MaLoaiSP);
            DataList1.DataSource = tb;
            DataList1.DataBind();

            DataTable loaisp = XLDL.Docbang("SELECT * FROM LoaiSP Where LoaiSP.MaLoaiSP=" + MaLoaiSP);
            string TenLoaiSP = loaisp.Rows[0][1].ToString();
            lblTenloaiSP.Text = TenLoaiSP;
        }
    }
}
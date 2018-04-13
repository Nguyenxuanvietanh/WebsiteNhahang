using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class SuaTTLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            try
            {
                int maloaisp = int.Parse(ddlLoaisp.SelectedValue.ToString());
                string tenmoi = txtTenmoi.Text;
                int mamenu = int.Parse(ddlMamenu.SelectedValue.ToString());

                string str = "UPDATE LoaiSP SET TenLoaiSP=N'" + tenmoi + "',MaMenu=" + mamenu + " WHERE MaLoaiSP= " + maloaisp + " ";
                XLDL.thuchienlenh(str);
            }
            catch
            {
                Response.Write("<script>alert('Cập nhật thất bại')</script>");
            }
        }
    }
}
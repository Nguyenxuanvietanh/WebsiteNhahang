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
    public partial class TTKhuyenmai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String MaKM = Request.QueryString["MaKM"];
            string str = "Select * from CTKhuyenMai where MaKM=" + MaKM;
            DataList1.DataSource = XLDL.Docbang(str);
            DataList1.DataBind();

            DataTable title = XLDL.Docbang("SELECT * FROM KhuyenMai Where KhuyenMai.MaKM=" + MaKM);
            string Title = title.Rows[0][1].ToString();
            lblTitle.Text = Title;
        }
    }
}
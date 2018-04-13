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
    public partial class QLDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = XLDL.Docbang("Select * from CTDonDatHang");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "chitiet")
            {
                int ma = int.Parse(e.CommandArgument.ToString());
                Response.Redirect("QLCTDDH.aspx?MaDDH=" + ma);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class QLMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try {
                String menu = txtMenu.Text;
                String link = txtLink.Text;
                string str = "INSERT INTO Menu(Menu,Link) VALUES(N'" + menu + "','" + link + "')";
                XLDL.thuchienlenh(str);

                Response.Write("<script>alert('Thêm thành công');location.href = 'QLMenu.aspx';</script>");
            }
            catch
            {
                Response.Write("<script>alert('Thêm thất bại');location.href = 'QLMenu.aspx';</script>");
            }
        }
    }
}
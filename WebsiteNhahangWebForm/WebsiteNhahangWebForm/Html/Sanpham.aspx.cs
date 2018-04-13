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
    public partial class Sanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String MaSP = Request.QueryString["MaSP"];
                DataTable sanpham = XLDL.Docbang("SELECT * FROM SanPham Where MaSP=" + MaSP);
                DataList1.DataSource = sanpham;
                DataList1.DataBind();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int MaSP = int.Parse(Request.QueryString["MaSP"]);
            ShoppingCart.Instance.AddItem(MaSP);
            Response.Redirect("SanPham.aspx?MaSP=" + MaSP);        
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Giohang.aspx");
        }
    }
}
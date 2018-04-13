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
    public partial class MenuSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String MaMenu = Request.QueryString["MaMenu"];
            DataTable dt = XLDL.Docbang("Select  * from LoaiSP, SanPham where LoaiSP.MaMenu=" + MaMenu + "and LoaiSP.MaLoaiSP=SanPham.MaLoaiSP");
            DataList1.DataSource = dt;
            DataList1.DataBind();

            DataTable dt1 = XLDL.Docbang("Select * from Menu where MaMenu =" + MaMenu);
            lblTenloaiSP.Text = dt1.Rows[0][1].ToString();

            //DataTable tb = XLDL.Docbang("SELECT * FROM LoaiSP Where LoaiSP.MaMenu=" + MaMenu);
            //int n = tb.Rows.Count;
            //for (int i = 0; i < n; i++)
            //{
            //    string maloaisp = tb.Rows[i][0].ToString();

            //    DataTable dt = XLDL.Docbang("Select * from SanPham where SanPham.MaLoaiSP=" + maloaisp);
            //    //ldt.Add(dt);
            //    DataList1.DataSource = dt;
            //    DataList1.DataBind();
               
            //}
            
        }
    }
}
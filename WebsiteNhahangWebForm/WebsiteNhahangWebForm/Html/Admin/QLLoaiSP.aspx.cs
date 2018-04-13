using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class QLLoaiSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            String tenloaisp = txtTenLoaiSP.Text;
            String menu = ddlMenu.Text;

            String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
            SqlConnection cnn = new SqlConnection(StrCnn);
            cnn.Open();

            string str = "INSERT INTO LoaiSP(TenLoaiSP,MaMenu) VALUES (N'"+ tenloaisp +"','"+ menu +"')";
            XLDL.thuchienlenh(str);

            Response.Write("<script>alert('Thêm thành công');location.href = 'QLLoaiSP.aspx';</script>");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try{
               
                    int ma = int.Parse(e.CommandArgument.ToString());
                    string str = "Delete  from LoaiSP where MaLoaiSP=" + ma;
                    XLDL.thuchienlenh(str);
                    Response.Write("<script>alert('Xóa thành công');location.href = 'QLLoaiSP.aspx';</script>");
                }

                catch
                {
                    Response.Write("<script>alert('Xóa thất bại')</script>");
                }
            }

            if (e.CommandName == "Sua")
            {
                Response.Redirect("SuaTTLoaiSP.aspx");
            }

        }

        
    }
}
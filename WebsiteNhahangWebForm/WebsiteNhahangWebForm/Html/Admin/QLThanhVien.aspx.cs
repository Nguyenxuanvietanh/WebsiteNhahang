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
    public partial class QLThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int matv = int.Parse(e.CommandArgument.ToString());
            DataTable a = XLDL.Docbang("Select * from ThanhVien where MaTV=" + matv);
            string maloaitv = a.Rows[0][7].ToString();

            if(e.CommandName == "Nangcap")
            {
                if (maloaitv == "1")
                {
                    Response.Write("<script>alert('Thành viên đã là admin');location.href = 'QLThanhVien.aspx';</script>");
                }
                if (maloaitv == "2")
                {
                    string str = "UPDATE ThanhVien SET MaLoaiTV = 1 where MaTV=" + matv;
                    XLDL.thuchienlenh(str);
                    Response.Write("<script>alert('Đã nâng cấp thành viên thành Admin');location.href = 'QLThanhVien.aspx';</script>");
                }
                else if(maloaitv == "0"){
                    Response.Write("<script>alert('Bạn đã là trùm');location.href = 'QLThanhVien.aspx';</script>");
                }
                
            }

            if (e.CommandName == "Hacap")
            {
                if (maloaitv == "1")
                {
                    string str = "UPDATE ThanhVien SET MaLoaiTV = 2 where MaTV=" + matv;
                    XLDL.thuchienlenh(str);
                    Response.Write("<script>alert('Đã giáng chức làm thường dân');location.href = 'QLThanhVien.aspx';</script>");
                }

                if (maloaitv == "2")
                {
                    Response.Write("<script>alert('Thành viên đang là thường dân, khỏi giáng chức !');location.href = 'QLThanhVien.aspx';</script>");
                }

                else if(maloaitv == "0")
                {
                    Response.Write("<script>alert('Bạn không có quyền giáng cấp thành viên này');location.href = 'QLThanhVien.aspx';</script>");
                }
            }
        }
    }
}
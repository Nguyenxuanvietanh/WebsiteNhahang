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
    public partial class SuaKM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ma = Request.QueryString["MaKM"];
                DataTable dt = XLDL.Docbang("Select * from KhuyenMai where MaKM=" + ma);

                txtTieude.Text = dt.Rows[0][1].ToString();
                txtThongtin.Text = dt.Rows[0][2].ToString();

                DataTable dt1 = XLDL.Docbang("Select * from CTKhuyenMai where MaKM=" + ma);
                txtChitiet.Text = dt1.Rows[0][2].ToString();
            }
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            string hinhanh, hinhanh1 = null;
            if (Page.IsValid && FUImage.HasFile && FUImage1.HasFile)
            {
                string fileName = "/Image/khuyenmai/" + FUImage.FileName;
                string filePath = MapPath(fileName);
                FUImage.SaveAs(filePath);
                hinhanh = FUImage.FileName;

                string ma = Request.QueryString["MaKM"];
                string str = "Update KhuyenMai Set TitleKM=N'" + txtTieude.Text + "', InfoKM=N'" + txtThongtin.Text + "', ImageKM='" + hinhanh + "' where MaKM=" + ma + " ";
                XLDL.thuchienlenh(str);

                string fileName1 = "/Image/khuyenmai/" + FUImage1.FileName;
                string filePath1 = MapPath(fileName1);
                FUImage.SaveAs(filePath1);
                hinhanh1 = FUImage1.FileName;

                DataTable dt = XLDL.Docbang("Select * from CTKhuyenMai where MaKM="+ ma +" ");
                string mact = dt.Rows[0][0].ToString();

                string str1 = "Update CTKhuyenMai Set TTKM=N'"+ txtThongtin.Text +"', ImageKM='"+ hinhanh1 +"' where MaCTKM="+ mact +"  ";
                XLDL.thuchienlenh(str1);

                Response.Write("<script>alert('Cập nhật thành công');location.href = 'QLKM.aspx';</script>");
            }
            else
                Response.Write("<script>alert('Cập nhật thất bại ');location.href = 'QLKM.aspx';</script>");
            
        }
    }
}
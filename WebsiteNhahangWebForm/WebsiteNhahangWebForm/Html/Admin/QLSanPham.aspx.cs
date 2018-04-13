using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.Html.Admin
{
    public partial class QLSanPham : System.Web.UI.Page
    {
        int Ngay = DateTime.Now.Day;
        int Thang = DateTime.Now.Month;
        int Nam = DateTime.Now.Year;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblNgay.Text = Nam.ToString() + "/" + Thang.ToString() + "/" + Ngay.ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(txtTenSP.Text != "" && txtGia.Text != "" && txtMoTa.Text != "")
            {
                String TenSp = txtTenSP.Text;
                String Gia = txtGia.Text;
                String Hinhanh = null;
                String Mota = txtMoTa.Text;
                String LoaiSP = ddlLoaiSP.Text;

                if (Page.IsValid && FUimage.HasFile)
                {
                    string fileName = "/Image/SanPham/" + FUimage.FileName;
                    string filePath = MapPath(fileName);
                    FUimage.SaveAs(filePath);
                    Hinhanh = FUimage.FileName;

                    String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
                    SqlConnection cnn = new SqlConnection(StrCnn);
                    cnn.Open();
                    string str = "INSERT INTO SanPham(TenSP,Gia,NgayCapNhat,HinhAnh,MoTa,MaLoaiSP) VALUES (N'" + TenSp + "','" + Gia + "','" + lblNgay.Text + "','" + Hinhanh + "',N'" + Mota + "','" + LoaiSP + "')";
                    XLDL.thuchienlenh(str);

                    Response.Write("<script>alert('Thêm thành công');location.href = 'QLSanPham.aspx';</script>");
                }
                
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try {
                    int ma = int.Parse(e.CommandArgument.ToString());
                    //int ma = int.Parse(GridView1.Rows[temp].Cells[0].Text);
                    string str = "Delete  from SanPham where MaSP=" + ma;
                    XLDL.thuchienlenh(str);
                    Response.Write("<script>alert('Xóa thành công');location.href = 'QLSanPham.aspx';</script>");
                }

                catch
                {
                    Response.Write("<script>alert('Xóa thất bại')</script>");
                }
                
            }

            if (e.CommandName == "Sua")
            {
                int ma = int.Parse(e.CommandArgument.ToString());
                Response.Redirect("SuaTTSP.aspx?MaSP=" + ma);
            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


        

    }
}
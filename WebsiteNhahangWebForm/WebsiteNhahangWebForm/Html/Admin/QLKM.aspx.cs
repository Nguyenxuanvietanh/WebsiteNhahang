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
    public partial class QLKM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string hinhanh, hinhanh1 = null;
            if (txtTieude.Text != "" && txtThongtin.Text != "" && FUImage.FileName != "" && txtChitiet.Text != "")
            {
                if (Page.IsValid && FUImage.HasFile && FUImage1.HasFile)
                {
                    string fileName = "/Image/khuyenmai/" + FUImage.FileName;
                    string filePath = MapPath(fileName);
                    FUImage.SaveAs(filePath);
                    hinhanh = FUImage.FileName;

                    string str = "Insert into KhuyenMai(TitleKM,InfoKM,ImageKM) values (N'" + txtTieude.Text + "',N'" + txtThongtin.Text + "','" + hinhanh + "')";
                    XLDL.thuchienlenh(str);

                    string a = txtTieude.Text;
                    DataTable dt = XLDL.Docbang("Select * from KhuyenMai where TitleKM=" + "N'" + txtTieude.Text + "'");
                    string makm = dt.Rows[0][0].ToString();
                    string fileName1 = "/Image/khuyenmai/" + FUImage1.FileName;
                    string filePath1 = MapPath(fileName1);
                    FUImage.SaveAs(filePath1);
                    hinhanh1 = FUImage1.FileName;

                    

                    string str1 = "Insert into CTKhuyenMai(MaKM,TTKM,ImageKM) values("+ makm +",N'"+ txtChitiet.Text +"','"+ hinhanh1 +"')";
                    XLDL.thuchienlenh(str1);

                    Response.Write("<script>alert('Thêm thành công !');location.href = 'QLKM.aspx';</script>");
                }
                
            }
            else
            {
                Response.Write("<script>alert('Bạn cần điền đầy đủ thông tin !');location.href = 'QLKM.aspx';</script>");
            }
        }

        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "Sua")
            {
                int ma = int.Parse(e.CommandArgument.ToString());
                Response.Redirect("SuaKM.aspx?MaKM=" + ma);
            }

            if (e.CommandName == "Xoa")
            {
                try
                {
                    int ma = int.Parse(e.CommandArgument.ToString());
                    string str = "Delete  from KhuyenMai where MaKM=" + ma;
                    XLDL.thuchienlenh(str);
                    Response.Write("<script>alert('Xóa thành công');location.href = 'QLKM.aspx';</script>");
                }

                catch
                {
                    Response.Write("<script>alert('Xóa thất bại')</script>");
                }

            }
        }

    }
}
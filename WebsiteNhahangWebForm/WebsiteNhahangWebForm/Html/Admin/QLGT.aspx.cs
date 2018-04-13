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
    public partial class QLGT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = XLDL.Docbang("Select * from GioiThieu");
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[1][1].ToString();
                TextBox3.Text = dt.Rows[2][1].ToString();
                TextBox4.Text = dt.Rows[3][1].ToString();
                TextBox5.Text = dt.Rows[4][1].ToString();
            }

        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            string hinh1 = null;
            string hinh2 = null;
            string hinh3 = null;
            string hinh4 = null;
            string hinh5 = null;
            if (Page.IsValid)
            {
                string fileName1 = "/Image/gioithieu/" + FileUpload1.FileName;
                string filePath1 = MapPath(fileName1);
                FileUpload1.SaveAs(filePath1);
                hinh1 = FileUpload1.FileName;

                string fileName2 = "/Image/gioithieu/" + FileUpload2.FileName;
                string filePath2 = MapPath(fileName2);
                FileUpload2.SaveAs(filePath2);
                hinh2 = FileUpload2.FileName;

                string fileName3 = "/Image/gioithieu/" + FileUpload3.FileName;
                string filePath3 = MapPath(fileName3);
                FileUpload3.SaveAs(filePath3);
                hinh3 = FileUpload3.FileName;

                string fileName4 = "/Image/gioithieu/" + FileUpload4.FileName;
                string filePath4 = MapPath(fileName4);
                FileUpload4.SaveAs(filePath4);
                hinh4 = FileUpload4.FileName;

                string fileName5 = "/Image/gioithieu/" + FileUpload5.FileName;
                string filePath5 = MapPath(fileName5);
                FileUpload5.SaveAs(filePath5);
                hinh5 = FileUpload5.FileName;

                string str1 = "Update GioiThieu set TTGT=N'" + TextBox1.Text + "',ImageGT= '" + hinh1 + "' where IdGioiThieu = 1 ";
                string str2 = "Update GioiThieu set TTGT=N'" + TextBox2.Text + "',ImageGT= '" + hinh2 + "' where IdGioiThieu = 2 ";
                string str3 = "Update GioiThieu set TTGT=N'" + TextBox3.Text + "',ImageGT= '" + hinh3 + "' where IdGioiThieu = 3 ";
                string str4 = "Update GioiThieu set TTGT=N'" + TextBox4.Text + "',ImageGT= '" + hinh4 + "' where IdGioiThieu = 4 ";
                string str5 = "Update GioiThieu set TTGT=N'" + TextBox5.Text + "',ImageGT= '" + hinh5 + "' where IdGioiThieu = 5 ";

                XLDL.thuchienlenh(str1);
                XLDL.thuchienlenh(str2);
                XLDL.thuchienlenh(str3);
                XLDL.thuchienlenh(str4);
                XLDL.thuchienlenh(str5);

                Response.Write("<script>alert('Cập nhật thành công');location.href = 'QLGT.aspx';</script>");
            }
            
        }
    }
}
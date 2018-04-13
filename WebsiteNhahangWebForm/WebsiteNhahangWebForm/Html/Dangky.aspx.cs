using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;
using System.Data;

namespace WebsiteNhahangWebForm.Html
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            try
            {
                string TaiKhoan = txtTenDN.Text;
                string MatKhau = txtMatkhau.Text;
                string HoTen = txtTen.Text;
                string NgaySinh = txtNgaysinh.Text;
                string GioiTinh = rbtnGioitinh.SelectedItem.ToString();
                string Email = txtEmail.Text;
                string SoDienThoai = txtSdt.Text;
                string DiaChi = txtDiachi.Text;
                int MaLoai = 2;
                

                String StrCnn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
                SqlConnection cnn = new SqlConnection(StrCnn);
                cnn.Open();

                SqlCommand cmd = cnn.CreateCommand();
                cmd.CommandText = "Select * from ThanhVien where TaiKhoan= '" + txtTenDN.Text + "' ";
                SqlDataReader a = cmd.ExecuteReader();
                if (a.Read())
                {
                    lbltbtk.Text = "Tên này đã được sử dụng";
                }
                else
                {
                    string str = "INSERT INTO ThanhVien(TenTV,NgaySinh,GioiTinh,EmailTV,SdtTV,DiaChiTV,MaLoaiTV,TaiKhoan,MatKhau) VALUES (N'" + HoTen + "','" + NgaySinh + "',N'" + GioiTinh + "',N'" + Email + "'," + SoDienThoai + ",N'" + DiaChi + "'," + MaLoai + ",N'" + TaiKhoan + "','" + MatKhau + "')";
                    XLDL.thuchienlenh(str);

                    Response.Write("<script>alert('Đăng ký thành công!');location.href = 'Dangnhap.aspx';</script>");
                }

                
            }
            catch
            {
                lblBaoLoi.Text = "Đăng ký thất bại...";
            }
        }

        protected void txtTenDN_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
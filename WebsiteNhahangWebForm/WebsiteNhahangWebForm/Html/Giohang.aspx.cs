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
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
                lblsoluong.Text = ShoppingCart.Instance.Items.Count.ToString();
            }
        }

        private void BindData()
        {
            GridView1.DataSource = ShoppingCart.Instance.Items;
            GridView1.DataBind();

            if (ShoppingCart.Instance.Items.Count > 0)
            {
                string TongTien = ShoppingCart.Instance.TongTien().ToString();

                lblTongTien.Text = TongTien + " VNĐ";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int ProductId = Convert.ToInt32(e.CommandArgument);
                ShoppingCart.Instance.RemoveItem(ProductId);
                
                lblsoluong.Text = ShoppingCart.Instance.Items.Count.ToString();
                if (ShoppingCart.Instance.Items.Count > 0)
                {
                    string TongTien = ShoppingCart.Instance.TongTien().ToString();

                    lblTongTien.Text = TongTien + " VNĐ";
                }
                else
                {
                    lblTongTien.Text = "0 VNĐ";
                }
            }


            BindData();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MenuSP.aspx?MaMenu=" + 3);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (lblsoluong.Text == "0")
            {
                Response.Write("<script>alert('Bạn chưa mua sản phẩm nào !');location.href = 'index.aspx';</script>");
            }
            else
            {
                Session["tongtien"] = lblTongTien.Text;
                Response.Redirect("Dathang.aspx");
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            int i = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    int MaSP = int.Parse(GridView1.Rows[i].Cells[0].Text);
                    int Soluong = int.Parse(((TextBox)row.Cells[i].FindControl("txtSoLuong")).Text);
                    ShoppingCart.Instance.SetItemSoLuong(MaSP, Soluong);
                    i++;
                }
                
            }
            Response.Redirect("Giohang.aspx");
        }

        

        
    }
}
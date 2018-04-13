using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteNhahangWebForm.Appdata;

namespace WebsiteNhahangWebForm.MasterPage
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected string menu = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Khách hàng đăng nhập
                if(Session["TenTV"] != null)
                {
                    lblChao.Text = "Xin chào: ";
                    hplTenTV.Text = Session["TenTV"].ToString();
                    hpl1.Text = "";

                    String str = "Select * from ThanhVien where TenTV=" + "N'" + Session["TenTV"].ToString() + "'";
                    DataTable ThanhVien = XLDL.Docbang(str);

                    hplTenTV.NavigateUrl = "~/Html/TTThanhVien.aspx?MaTV=" + Session["MaTV"].ToString();

                }

                //Mảng 
                String str2 = "Select distinct Menu.MaMenu,Menu from Menu,LoaiSP where Menu.MaMenu = LoaiSP.MaMenu";
                DataTable MenuHome = XLDL.Docbang(str2);
                int n2 = MenuHome.Rows.Count;
                List<int> Mamenucon = new List<int>();
                for (int i = 0; i < n2; i++)
                {
                    int a = Int32.Parse(MenuHome.Rows[i][0].ToString());
                    Mamenucon.Add(a);
                }

                //Xử lý menu
                String str1 = "Select * from Menu";
                DataTable Menu = XLDL.Docbang(str1);
                int n = Menu.Rows.Count;
                for(int i = 0; i < n;i++){
                    int temp = Int32.Parse(Menu.Rows[i][0].ToString());
                    string linkMenu = Menu.Rows[i][2].ToString();
                    string TenMenu = Menu.Rows[i][1].ToString();
                    if(Mamenucon.Contains(temp) == true)
                    {
                        String str3 = "Select * from LoaiSP where MaMenu=" + temp.ToString();
                        DataTable Menucon = XLDL.Docbang(str3);
                        int slMenucon = Menucon.Rows.Count;

                        menu += "<li><a href=" + linkMenu + "?MaMenu=" + temp.ToString() +">" + TenMenu + "</a><ul>";
                        
                        for (int j = 0; j < slMenucon; j++)
                        {
                              string link = "/Html/LoaiSP.aspx?MaLoaiSP=" + Menucon.Rows[j][0].ToString();
                              menu += "<li><a href='" + link + "'>" + Menucon.Rows[j][1].ToString() + "</a></li>";
                        }
                        menu += "</ul></li>";
                    }
                    else
                    {
                        linkMenu = Menu.Rows[i][2].ToString();
                        TenMenu = Menu.Rows[i][1].ToString();

                        menu += "<li><a href=" + linkMenu + "?MaMenu=" + temp.ToString() +">" + TenMenu + "</a></li>";
                    }
                    
                }

            }


        }
    }
}
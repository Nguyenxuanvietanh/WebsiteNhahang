using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebsiteNhahangWebForm.Appdata
{
    public class Product
    {
        public int masp;
        public String tensp;
        public int soluong;
        public decimal gia;
        public decimal tongtien;
        public String hinhanh;

        public Product(int MaSP)
        {
            DataTable sp = XLDL.Docbang("select *from SanPham where MaSP=" + MaSP);
            this.tensp = sp.Rows[0][1].ToString();
            this.masp = MaSP;
            this.gia = decimal.Parse(sp.Rows[0][2].ToString());
            this.tongtien = this.soluong * this.gia;
            this.hinhanh = sp.Rows[0][4].ToString();
        }
    }
}
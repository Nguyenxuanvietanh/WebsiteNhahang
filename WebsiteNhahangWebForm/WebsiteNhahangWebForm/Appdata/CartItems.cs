using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteNhahangWebForm.Appdata
{
    public class CartItems : IEquatable<CartItems>
    {
        #region Properties

        private int _ProductId;
        public int ProductId
        {
            get { return _ProductId; }
            set
            {
                product = null;
                _ProductId = value;
            }
        }
        
        public string HinhAnh
        {
            get { return SanPham.hinhanh; }
        }
        public String TenSP
        {
            get { return SanPham.tensp; }
        }
        public decimal Gia
        {
            get { return SanPham.gia; }
        }
        public int SoLuong { get; set; }
        public decimal ThanhTien
        {
            get { return Gia * SoLuong; }
        }

        private Product product = null;
        public Product SanPham
        {
            get
            {
                if (product == null)
                {
                    product = new Product(ProductId);
                }
                return product;
            }
        }

        #endregion


        public CartItems(int ProductId)
        {
            this._ProductId = ProductId;
        }

        public bool Equals(CartItems item)
        {
            return item._ProductId == this._ProductId;
        }
    }
}
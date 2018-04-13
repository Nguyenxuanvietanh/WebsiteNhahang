using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteNhahangWebForm.Appdata
{
    public class ShoppingCart
    {
        public List<CartItems> Items { get; set; }
        public static readonly ShoppingCart Instance;

        static ShoppingCart()
        {
            if (HttpContext.Current.Session["ShoppingCart"] == null)
            {
                Instance = new ShoppingCart();
                Instance.Items = new List<CartItems>();
                HttpContext.Current.Session["ShoppingCart"] = Instance;
            }
            else
            {
                Instance = (ShoppingCart)HttpContext.Current.Session["ShoppingCart"];
            }
        }
        

        public void AddItem(int MaSP)
        {
            CartItems NewItem = new CartItems(MaSP);
            
            if (Items.Contains(NewItem))
            {


                foreach (CartItems item in Items)
                {
                    if (item.Equals(NewItem) == true)
                    {
                        item.SoLuong++;
                        return;
                    }
                }
            }
            else
            {

                NewItem.SoLuong = 1;
                Items.Add(NewItem);
            }

        }

        public decimal TongTien()
        {
            decimal TongTien = 0;
            foreach (CartItems item in Items)
            {
                TongTien += item.ThanhTien;
            }
            return TongTien;
        }

        public void RemoveItem(int MaSP)
        {
            CartItems removedItem = new CartItems(MaSP);
            Items.Remove(removedItem);
        }

        public void SetItemSoLuong(int MaSP, int SoLuong)
        {
            if (SoLuong == 0)
            {
                RemoveItem(MaSP);
                return;
            }

            CartItems updatedItem = new CartItems(MaSP);

            foreach (CartItems item in Items)
            {
                if (item.Equals(updatedItem))
                {
                    item.SoLuong = SoLuong;
                    return;
                }
            }
        }


    }
}
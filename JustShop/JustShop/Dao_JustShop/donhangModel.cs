using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class donhangModel
    {
        private JustShop1Entities1 justshop = null;
        public donhangModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<DonHang> getDonHang(int thang = 0)
        {
            List<DonHang> donhang = new List<DonHang>();
            if(thang ==0)
            {
                   donhang = (from c in justshop.DonHangs select c).ToList();
            }
            else
            {
                donhang = (from c in justshop.DonHangs where c.NgayMua.Month == thang select c).ToList();
            }
          
            return donhang;
        }
        public bool addDonHang(string ten,int sdt,string diachi,int soluong,float tongtien)
        {
            DonHang a = new DonHang();
            a.TenKH = ten;
            a.SDT = sdt;
            a.DiaChi = diachi;
            a.SoLuong = soluong;
            a.TongTien = tongtien;
            justshop.DonHangs.Add(a);
            justshop.SaveChanges();
            return true;
        }
        public string getTenkH(int id)
        {
            DonHang a = (from c in justshop.DonHangs where c.MaDonHang == id select c).SingleOrDefault();
            return a.TenKH;
        }
        public int getmadonhang()
        {
            DonHang a = (from c in justshop.DonHangs orderby c.MaDonHang descending select c).Take(1).SingleOrDefault();
            return a.MaDonHang;
        }
    }
}
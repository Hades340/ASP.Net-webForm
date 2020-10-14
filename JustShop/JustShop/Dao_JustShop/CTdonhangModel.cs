using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class CTdonhangModel
    {
        private JustShop1Entities1 justshop = null;
        public CTdonhangModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<CTDonHang> getdata(int madonhang = 0)
        {
            List<CTDonHang> ctdonhang = new List<CTDonHang>();
            if(madonhang !=0)
            {
                ctdonhang = (from c in justshop.CTDonHangs where c.MaDonHang == madonhang orderby c.MaDonHang select c ).ToList();
            }
            else
            {
                ctdonhang = (from c in justshop.CTDonHangs orderby c.MaDonHang select c).ToList();
            }
            return ctdonhang;
        }
        public void addCTdonhang(int madonhang,int masp,int soluong,float gia , float thanhtien)
        {
            CTDonHang ctdonhang = new CTDonHang();
            ctdonhang.MaDonHang = madonhang;
            ctdonhang.MaSp = masp;
            ctdonhang.SoLuong = soluong;
            ctdonhang.Gia = gia;
            ctdonhang.GiaTien = thanhtien;
            justshop.CTDonHangs.Add(ctdonhang);
            justshop.SaveChanges();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class CTphieunhapModel
    {
        private JustShop1Entities1 justshop = null;
        public CTphieunhapModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<CTPhieunhap> getdata(int madonhang = 0)
        {
            List<CTPhieunhap> ctdonhang = new List<CTPhieunhap>();
            if(madonhang == 0)
            {
                ctdonhang = (from c in justshop.CTPhieunhaps select c).ToList();
            }
            else
            {
                ctdonhang = (from c in justshop.CTPhieunhaps where c.MaPhieuNhap == madonhang select c).ToList();
            }
            
            return ctdonhang;
        }
        public bool delete(int id)
        {
            CTPhieunhap ct = (from c in justshop.CTPhieunhaps where c.MaCTPhieuNhap == id select c).SingleOrDefault();
            if(ct == null)
            {
                return false;
            }
            justshop.CTPhieunhaps.Remove(ct);
            justshop.SaveChanges();
            return true;
        }
        public void addCT(int maphieunhap, int maloai,int masp,int soluong,float gianhap)
        {
            CTPhieunhap a = new CTPhieunhap();
            a.MaPhieuNhap = maphieunhap;
            a.MaLoai = maloai;
            a.MaSp = masp;
            a.Soluong = soluong;
            a.GiaNhap = gianhap;
            justshop.CTPhieunhaps.Add(a);
            justshop.SaveChanges();
        }
        public bool update(int id, int maphieunhap, int maloai, int masp, int soluong, float gianhap)
        {
            CTPhieunhap a = (from c in justshop.CTPhieunhaps where c.MaCTPhieuNhap == id select c).SingleOrDefault();
            if(a==null)
            {
                return false;
            }
            a.MaLoai = maloai;
            a.MaPhieuNhap = maphieunhap;
            a.MaSp = masp;
            a.Soluong = soluong;
            a.GiaNhap = gianhap;
            justshop.SaveChanges();
            return true;
        }
        public CTPhieunhap search(int id)
        {
            CTPhieunhap a = (from c in justshop.CTPhieunhaps where c.MaCTPhieuNhap == id select c).SingleOrDefault();
            return a;
        }
    }
}
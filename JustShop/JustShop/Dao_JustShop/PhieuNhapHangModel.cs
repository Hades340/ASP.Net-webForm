using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class PhieuNhapHangModel
    {
        private JustShop1Entities1 justshop = null;
        public PhieuNhapHangModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<PhieuNhapHang> getphieunhap()
        {
            List<PhieuNhapHang> phieuNhaps = (from c in justshop.PhieuNhapHangs select c).ToList();
            return phieuNhaps;
        }
        public bool update(int maphieunhap , int soluongnhap , float tong)
        {
            PhieuNhapHang phieunhap = (from c in justshop.PhieuNhapHangs where c.MaPhieuNhap == maphieunhap select c).SingleOrDefault();
            if(phieunhap == null)
            {
                return false;
            }
            phieunhap.SoLuongNhap = soluongnhap;
            phieunhap.TongTien = tong;
            justshop.SaveChanges();
            return true;
        }
        public void insert(float tong , int soluongnhap)
        {
            PhieuNhapHang phieunhap = new PhieuNhapHang();
            phieunhap.TongTien = tong;
            phieunhap.SoLuongNhap = soluongnhap;
            justshop.PhieuNhapHangs.Add(phieunhap);
            justshop.SaveChanges();
        }
        public bool delete(int id)
        {
            PhieuNhapHang a = (from c in justshop.PhieuNhapHangs where c.MaPhieuNhap == id select c).SingleOrDefault();
            if(a==null)
            {
                return false;
            }
            justshop.PhieuNhapHangs.Remove(a);
            justshop.SaveChanges();
            return true;
        }
    }
}
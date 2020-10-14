using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class sanphamModel:connect
    {
        private JustShop1Entities1 justShop;
        public sanphamModel()
        {
            justShop = new connect().ketnoi();
        }
        public List<SanPham> getsanpham(int maloai = 0)
        {
           
            List<SanPham> sanpham = new List<SanPham>();
            if(maloai == 0)
            {
                sanpham = (from c in justShop.SanPhams select c).ToList();
            }
            else
            {
                sanpham = (from c in justShop.SanPhams where c.MaLoai == maloai select c).ToList();
            }
            return sanpham;
        }
        public bool AddSanPham(int maloai,string tensanpham,string hinhanh, string noidung , string mota, int soluong , float giatien, DateTime handung)
        {
            SanPham sp = new SanPham();
            sp.MaLoai = maloai;
            sp.Tensp = tensanpham;
            sp.HinhAnh = hinhanh;
            sp.NoiDung = noidung;
            sp.MoTa = mota;
            sp.SoLuong = soluong;
            sp.GiaTien = giatien;
            sp.HanSuDung = handung;
            justShop.SanPhams.Add(sp);
            justShop.SaveChanges();
            return true;
        }
        public bool remove(int id)
        {
            SanPham sp = (from c in justShop.SanPhams where c.MaSp == id select c).SingleOrDefault();
            if(sp != null)
            {
                justShop.SanPhams.Remove(sp);
                justShop.SaveChanges();
                return true;
            }
            return false;
        }
        public bool update(int id , int maloai, string tensanpham, string hinhanh, string noidung, string mota, float giatien, DateTime handung)
        {
            SanPham sp = (from c in justShop.SanPhams where c.MaSp == id select c).SingleOrDefault();
            if(sp == null)
            {
                return false;
            }
            sp.MaLoai = maloai;
            sp.Tensp = tensanpham;
            sp.HinhAnh = hinhanh;
            sp.NoiDung = noidung;
            sp.MoTa = mota;
            sp.HanSuDung = handung;
            sp.GiaTien = giatien;
            justShop.SaveChanges();
            return true;
            
        }
        public string gettensp(int id)
        {
            SanPham a = (from c in justShop.SanPhams where c.MaSp == id select c).SingleOrDefault();
            return a.Tensp;
        }
        public SanPham getsp(int id)
        {
        
            SanPham a = (from c in justShop.SanPhams where c.MaSp == id select c).SingleOrDefault();
            if(a == null)
            {
                return null;
            }
            return a;
        }
        public List<SanPham> sanPhams(int id)
        {

            List<SanPham> sanpham = new List<SanPham>();
           
                sanpham = (from c in justShop.SanPhams where c.MaSp == id select c).ToList();
           
            return sanpham;
        }
        public List<SanPham> sanPhamss()
        {

            List<SanPham> sanpham = new List<SanPham>();

            sanpham = (from c in justShop.SanPhams  orderby c.MaSp descending  select c).Take(8).ToList();

            return sanpham;
        }
        public List<SanPham> sanPhamsss(int id)
        {

            List<SanPham> sanpham = new List<SanPham>();

            sanpham = (from c in justShop.SanPhams where c.MaSp!=id orderby c.MaSp descending select c).Take(4).ToList();

            return sanpham;
        }
    }
}
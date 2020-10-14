using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class LoaiSanPhamModel:connect
    {
        private JustShop1Entities1 justshop = null;
        LoaiSanPham LoaiSanPham = new LoaiSanPham();
        public LoaiSanPhamModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<LoaiSanPham> getdata()
        {
            List<LoaiSanPham> loaiSanPhams = new List<LoaiSanPham>();
            loaiSanPhams = (from c in justshop.LoaiSanPhams select c).ToList();
            return loaiSanPhams;
        }
         public LoaiSanPham getloai(int id)
        {
            LoaiSanPham loaisp = (from c in justshop.LoaiSanPhams where c.MaLoai == id select c).SingleOrDefault();
            return loaisp;
        }
        public bool update(int id , string tenloai, string trichdan, string anh)
        {
           LoaiSanPham = (from c in justshop.LoaiSanPhams where c.MaLoai == id select c).SingleOrDefault();
            if(LoaiSanPham != null)
            {
                LoaiSanPham.AnhTieuBieu = anh;
                LoaiSanPham.TenLoai = tenloai;
                LoaiSanPham.TrichDan = trichdan;
                justshop.SaveChanges();
                return true;
            }
            return false;
           
        }
        public bool insert(string tenloai, string trichdan, string anh)
        {
            LoaiSanPham.TenLoai = tenloai;
            LoaiSanPham.TrichDan = trichdan;
            LoaiSanPham.AnhTieuBieu = anh; 
            justshop.LoaiSanPhams.Add(LoaiSanPham);
            justshop.SaveChanges();
            return true;
        }
        public bool remove(int id)
        {
            LoaiSanPham = (from c in justshop.LoaiSanPhams where c.MaLoai == id select c).SingleOrDefault();
            justshop.LoaiSanPhams.Remove(LoaiSanPham);
            justshop.SaveChanges();
            return true;
        }
        public string gettenloai(int id)
        {
            LoaiSanPham sanpham = (from c in justshop.LoaiSanPhams where c.MaLoai == id select c).SingleOrDefault();
            return sanpham.TenLoai;
        }
        public List<LoaiSanPham> getdata1()
        {
            List<LoaiSanPham> loaiSanPhams = new List<LoaiSanPham>();
            loaiSanPhams = (from c in justshop.LoaiSanPhams orderby c.MaLoai descending select c).Take(3).ToList();
            return loaiSanPhams;
        }

    }
}
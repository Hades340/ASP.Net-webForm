using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class tintucModel
    {
        private JustShop1Entities1 justshop = null;
        public tintucModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<TinTuc> gettintuc(int thang = 0)
        {
            List<TinTuc> tintuc = new List<TinTuc>();
            if(thang == 0)
            {
                tintuc = (from c in justshop.TinTucs orderby c.MaTin descending select c).ToList();
            }
             else
            {
                tintuc = (from c in justshop.TinTucs where c.NgayDang.Value.Month == thang orderby c.MaTin descending select c).ToList();
            }
            return tintuc;
        }
        public bool addTinTuc(string tieude,string noidung ,string anh)
        {
            TinTuc a = new TinTuc();
            a.TieuDe = tieude;
            a.NoiDung = noidung;
            a.Anh = anh;
            justshop.TinTucs.Add(a);
            justshop.SaveChanges();
            return true;
        }
        public bool UpdateTinTuc(int id,string tieude , string noidung,string anh)
        {
            TinTuc a = (from c in justshop.TinTucs where c.MaTin == id select c).SingleOrDefault();
            if(a!=null)
            {
                a.Anh = anh;
                a.TieuDe = tieude;
                a.NoiDung = noidung;
                justshop.SaveChanges();
                return true;
            }
            return false;
        }
        public bool deleteTinTuc(int id)
        {
            TinTuc a = (from c in justshop.TinTucs where c.MaTin == id select c).SingleOrDefault();
            if(a!=null)
            {
                justshop.TinTucs.Remove(a);
                justshop.SaveChanges();
                return true;
            }
            return false;
        }
        public TinTuc gettins(int id)
        {
            TinTuc a = (from c in justshop.TinTucs where c.MaTin == id select c).SingleOrDefault();
            return a;
        }
        public List<TinTuc> more(int id)
        {
            List<TinTuc> tintuc = new List<TinTuc>();
            tintuc = (from c in justshop.TinTucs where c.MaTin != id  orderby c.MaTin descending select c).ToList();
            return tintuc;
        }
        public List<TinTuc> mores(int id)
        {
            List<TinTuc> tintuc = new List<TinTuc>();
            tintuc = (from c in justshop.TinTucs where c.MaTin == id orderby c.MaTin descending  select  c).ToList();
            return tintuc;
        }
    }
}
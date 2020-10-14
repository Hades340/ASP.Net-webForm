using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class phanhoiModel
    {
        private JustShop1Entities1 justshop = null;
        public phanhoiModel()
        {
            justshop = new Dao_JustShop.connect().ketnoi();
        }
        public List<PhanHoi> getdata()
        {
            List<PhanHoi> phanhoi = (from c in justshop.PhanHois select c).ToList();
            return phanhoi;
        }
        public void addPhanhoi(string ten , string email,int sdt, string tieude, string noidung)
        {
            PhanHoi ph = new PhanHoi();
            ph.Ten = ten;
            ph.Email = email;
            ph.DienThoai = sdt;
            ph.TieuDePhanHoi = tieude;
            ph.NoiDungPhanHoi = noidung;
            justshop.PhanHois.Add(ph);
            justshop.SaveChanges();

        }
        public List<PhanHoi> searchTinTuc(string ten)
        {
            List<PhanHoi> a = (from c in justshop.PhanHois where c.Ten == ten select c).ToList();
            return a;
        }
    }
}
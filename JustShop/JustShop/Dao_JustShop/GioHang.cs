using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class GioHang
    {
        private int MaSp;
        private string tensp;
        private int soluong = 1;
        private float giatien;
        private float  tongtien = 0;
        private string HinhAnh;

        public GioHang()
        {
        }

        public GioHang(int maSp, string tensp, int soluong, float giatien, float tongtien, string hinhAnh)
        {
            this.MaSp = maSp;
            this.tensp = tensp;
            this.soluong = soluong;
            this.giatien = giatien;
            this.tongtien = tongtien;
            this.HinhAnh = hinhAnh;
        }

        public int MaSp1 { get => MaSp; set => MaSp = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public int Soluong { get => soluong; set => soluong = value; }
        public float Giatien { get => giatien; set => giatien = value; }
        public float Tongtien { get => tongtien; set => tongtien = value; }
        public string HinhAnh1 { get => HinhAnh; set => HinhAnh = value; }

        public GioHang GetGioHang(int id,List<GioHang> a)
        {
            GioHang sp = new GioHang();
            foreach (GioHang item in a)
            {
                if(item.MaSp1 == id)
                {
                     sp=item;

                }
            }
            return sp;
        }
    }
}
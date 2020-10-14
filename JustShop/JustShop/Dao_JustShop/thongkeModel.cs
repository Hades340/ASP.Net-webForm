using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class thongkeModel
    {
        private JustShop1Entities1 justshop = null;
        public thongkeModel()
        {
            justshop = new connect().ketnoi();
        }
        public List<ThongKe> getdata(int thang = 0)
        {
            List<ThongKe> thongke = new List<ThongKe>();
            if(thang !=0)
            {
                thongke = (from c in justshop.ThongKes where c.Ngay == thang select c).ToList();
            }
            thongke = (from c in justshop.ThongKes select c).ToList();
            return thongke;
        }
        public void proc()
        {
            justshop.Database.ExecuteSqlCommand("thongke1");
            justshop.Database.ExecuteSqlCommand("thongke2");
            justshop.Database.ExecuteSqlCommand("thongke4");
            justshop.Database.ExecuteSqlCommand("thongke5");

        }
    }
}
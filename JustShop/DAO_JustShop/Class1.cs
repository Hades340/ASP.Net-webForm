using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO_JustShop
{
    public class Class1
    {
        private JustShop1Entities justshop = null;
        public Class1()
        {
            justshop = new JustShop1Entities();
        }
        public bool login(string username , string password)
        {
            List<TaiKhoan> taiKhoans = (from c in justshop.TaiKhoans where c.TaiKhoan1 == username && c.MatKhau == password select c).ToList();
            if(taiKhoans != null)
            {
                return true;
            }
            return false;
        }
    }
}

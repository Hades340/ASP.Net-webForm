using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class login:connect
    {
        private JustShop1Entities1 justshop = null;
        public login()
        {
            justshop = new connect().ketnoi();
        }
        public bool login1(string username, string password)
        {
           var taiKhoans = (from c in this.ketnoi().TaiKhoans where c.TaiKhoan1 == username && c.MatKhau == password select c).SingleOrDefault();
            if (taiKhoans != null)
            {
                return true;
            }
            return false;
        }
        public bool changepass(string taikhoan , string matkhau, string ten,int sdt, string diachi)
        {
            TaiKhoan nguoi = (from a in justshop.TaiKhoans where a.TaiKhoan1 == taikhoan select a).SingleOrDefault();
            if(nguoi != null)
            {
                nguoi.MatKhau = matkhau;
                nguoi.TenNV = ten;
                nguoi.SDT = sdt;
                nguoi.DiaChi = diachi;
                justshop.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

        // lấy mã MD5
        public static string GetMD5(string str)
        {

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

            byte[] bHash = md5.ComputeHash(Encoding.UTF8.GetBytes(str));

            StringBuilder sbHash = new StringBuilder();

            foreach (byte b in bHash)
            {

                sbHash.Append(String.Format("{0:x2}", b));

            }

            return sbHash.ToString();

        }


        public bool adduser(string taikhoan, string matkhau, string ten, int sdt, string diachi)
        {
            TaiKhoan nguoi1 = (from a in justshop.TaiKhoans where a.TaiKhoan1 == taikhoan select a).SingleOrDefault();
            string mk = GetMD5(matkhau);
            if(nguoi1 ==  null)
            {
                TaiKhoan nguoi = new TaiKhoan();
                nguoi.TaiKhoan1 = taikhoan;
                nguoi.MatKhau = mk;
                nguoi.TenNV = ten;
                nguoi.SDT = sdt;
                nguoi.DiaChi = diachi;
                justshop.TaiKhoans.Add(nguoi);
                justshop.SaveChanges();
                return true;
            }
            return false;
        }


        public TaiKhoan check(string tk)
        {
            TaiKhoan nguoi = (from a in justshop.TaiKhoans where a.TaiKhoan1 == tk select a).SingleOrDefault();
            return nguoi;
        }
        public bool capnhat(string tk,string mk)
        {
            TaiKhoan a = (from c in justshop.TaiKhoans where c.TaiKhoan1 == tk select c).SingleOrDefault();
            if(a!=null)
            {
                a.MatKhau = GetMD5( mk);
                justshop.SaveChanges();
                return true;
            }
            return false;
        }

        public List<TaiKhoan> checkfull()
        {
            List<TaiKhoan> taikhoan = new List<TaiKhoan>();
            taikhoan = (from c in justshop.TaiKhoans select c).ToList();
            return taikhoan;
        }
    }
}
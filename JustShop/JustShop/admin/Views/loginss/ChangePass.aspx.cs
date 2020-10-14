using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.loginss
{
    public partial class ChangePass : System.Web.UI.Page
    {
        string a = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                 a = Session["username"].ToString();
            }
        }
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
        protected void btnThem_Click(object sender, EventArgs e)
        {
            string matkhau = GetMD5(txtMKhientai.Text);
            string matkhaumoi = txtMatKhauMoi.Text;
            string nhaplai = txtMatKhauNhapLai.Text;
            if(txtMatKhauMoi.Text == "")
            {
                label3.Text = "Mật khẩu mới chưa nhập";
            }
            if(txtMKhientai.Text=="")
            {
                label1.Text = "Mật khẩu hiện tại chưa nhập";
            }
            if(txtMatKhauNhapLai.Text == "")
            {
                label5.Text = "Bạn chưa nhập lại mật khẩu";
            }
            if(matkhau != new Dao_JustShop.login().check(a).MatKhau)
            {
                lbDangKySai.Text = "Mật khẩu chưa đúng";

            }
            else if(matkhaumoi != nhaplai)
            {
                lbDangKySai.Text = "Mật khẩu mới không trùng nhau";
            }
            else
            {
                if(new Dao_JustShop.login().capnhat(a,matkhaumoi))
                {
                    lbThanhCong.Text = "Đổi mật khẩu thành công";
                }
                else
                {
                    lbDangKySai.Text = "Đổi mật khẩu thất bại";
                }
            }
        }
    }
}
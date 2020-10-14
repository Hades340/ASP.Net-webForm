using JustShop.Dao_JustShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbMatKhau.Text = "";
            lbTaiKhoan.Text = "";
            Label3.Text = "";
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txtTaiKhoan.Text;
            string password = txtMatKhau.Text;
           if(txtTaiKhoan.Text == "")
            {
                lbTaiKhoan.Text = "Bạn chưa nhập tài khoản";
            }
            if(txtMatKhau.Text == "")
            {
                lbMatKhau.Text = "Bạn chưa nhập mật khẩu";
            }
            bool check = new Dao_JustShop.login().login1(username,GetMD5( password));
            if(check == true)
            {
                Session["username"] = username;
                Response.Redirect("~/admin/Views/index.aspx");
            }
            if(check == false && txtMatKhau.Text != ""  && txtTaiKhoan.Text != "")
            {
                Label3.Text = "Tài khoản hoặc mật khẩu của bạn không đúng";
            }
           
            
        }
    }
}
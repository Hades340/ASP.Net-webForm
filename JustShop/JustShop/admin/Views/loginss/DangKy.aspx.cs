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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                label1.Text = "";
                label2.Text = "";
                label3.Text = "";
                label4.Text = "";
                label5.Text = "";
                label6.Text = "";
                lbDangKySai.Text = "";
             ;
                lbThanhCong.Text = "";
            }
           
        }
       
        protected void btnThem_Click(object sender, EventArgs e)
        {
            int sdt = 0;
            string ten = txtTen.Text;
            if(txtSoDienThoai.Text != "")
            {
                 sdt = Convert.ToInt32(txtSoDienThoai.Text);
            }
           
            string taikhoan = txtTenTaiKhoan.Text;
            string matkhau = txtMatKhau.Text;
            string diachi = txtDiaChi.Text;
            string mk = txtMatKhau1.Text;
    
    
            if(ten=="")
            {
                label1.Text = "Tên nhân viên trống";
            }
            if(txtSoDienThoai.Text == "")
            {
                label3.Text = "Số điện thoại không được để trống ";
            }
            if(txtTenTaiKhoan.Text == "")
            {
                label2.Text = "Tài khoản không được để trống";
            }
            if(txtMatKhau.Text == "")
            {
                label5.Text = "Mật khẩu không được để trống";
            }
            if(txtDiaChi.Text == "")
            {
                label4.Text = "Địa chỉ trống";
            }
            if(txtMatKhau1.Text =="")
            {
                label6.Text = "Yêu cầu nhập lại mật khẩu";
            }
            if(matkhau == mk )
            {
                if(taikhoan != "" && matkhau !="" && ten!="" && sdt != 0)
                {
                    
                    bool check = new Dao_JustShop.login().adduser(taikhoan, matkhau, ten, sdt, diachi);
                    if(check == true)
                    {
                        lbThanhCong.Text = "Thêm thành viên thành công";
                    }
                    else
                    {
                        lbDangKySai.Text = "Thêm thành viên thất bại";
                    }
                }
               
            }
            else
            {
                lbDangKySai.Text = "Phần mật khẩu của bạn nhập không trùng nhau";
            }
        }
    }
}
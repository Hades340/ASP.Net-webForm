using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.PhanHoi
{
    public partial class LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string hoten = txtHoTen.Text;
            string email = txtEmail.Text;
            int sdt = int.Parse(txtSDT.Text);
            string tieude = txtTieuDe.Text;
            string noidung = txtNoiDung.Text;
            if(txtHoTen.Text == "")
            {
                lbHoTen.Text = "Họ tên trống";
            }
            if(txtEmail.Text=="")
            {
                lbEmail.Text = "Email trống";
            }
            if(txtNoiDung.Text=="")
            {
                lbNoiDung.Text = "Nội dung trống";
            }
            if(txtSDT.Text=="")
            {
                lbSDT.Text = "Số điện thoại trống";
            }
            if(txtTieuDe.Text == "")
            {
                lbTieuDe.Text = "Tiêu đề trống";
            }
            if(txtTieuDe.Text !="" && txtSDT.Text != "" && txtNoiDung.Text != "" && txtEmail.Text != "" && txtHoTen.Text != "")
            {
                try
                {
                    new Dao_JustShop.phanhoiModel().addPhanhoi(hoten, email, sdt, tieude, noidung);
                    lbThanhCong.Text = "Gửi thành công";
                }
                catch (Exception)
                {

                    lbThatBai.Text = "Gửi thất bại";
                }
               
            }
        }
    }
}
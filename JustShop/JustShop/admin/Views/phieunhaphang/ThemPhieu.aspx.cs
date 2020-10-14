using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.phieunhaphang
{
    public partial class ThemPhieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            float giatien = float.Parse(txtTongTien.Text);
            int soluong = int.Parse(txtSoLuongNhap.Text);
            if(txtSoLuongNhap.Text == "" || soluong < 0)
            {
                lbErr1.Text = "Số lượng nhập trống";
            }
            if (txtTongTien.Text == "" || giatien < 0)
            {
                lbErr2.Text = "Tổng tiền trống";
            }
            if(txtTongTien.Text != "" && txtSoLuongNhap.Text!="" && soluong > 0 && giatien > 0)
            {
                try
                {
                    new Dao_JustShop.PhieuNhapHangModel().insert(giatien, soluong);
                    lbThanhcong.Text = "Thêm phiếu thành công";
                    Response.Redirect("~/admin/Views/phieunhaphang/PhieuNhap.aspx");
                }
                catch (Exception)
                {

                     lbThatBai.Text="Thêm phiếu không thành công";
                }
                
            }
        }
    }
}
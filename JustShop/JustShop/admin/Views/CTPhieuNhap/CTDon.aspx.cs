using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.CTPhieuNhap
{
    public partial class CTDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();
            }
        }
        protected void getdata()
        {
            dgvCTNhap.DataSource = new Dao_JustShop.CTphieunhapModel().getdata();
            dgvCTNhap.DataBind();
        }
        protected string getname(string masp)
        {
            return new Dao_JustShop.sanphamModel().gettensp(int.Parse(masp));
        }
        protected string gettenloai(string ten)
        {
            return new Dao_JustShop.LoaiSanPhamModel().gettenloai(int.Parse(ten));
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string a = e.CommandArgument.ToString();
            if (new Dao_JustShop.CTphieunhapModel().delete(int.Parse(a)) == true)
            {
                lbThanhCong.Text = "Xóa dữ liệu thành công";
                getdata();
            }
            else
            {
                lbThatBai.Text = "Xóa dữ liệu không thành công";
            }
        }
    }
}
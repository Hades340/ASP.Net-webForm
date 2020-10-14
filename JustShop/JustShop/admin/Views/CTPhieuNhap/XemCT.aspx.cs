using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.CTPhieuNhap
{
    public partial class XemCT : System.Web.UI.Page
    {
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["MaCT"].ToString();
            if(!IsPostBack)
            {
                getdata(int.Parse(name));
            }
        }
        protected void getdata(int id)
        {
            dgvCTPhieuNhap.DataSource= new Dao_JustShop.CTphieunhapModel().getdata(id);
            dgvCTPhieuNhap.DataBind();
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
           if( new Dao_JustShop.CTphieunhapModel().delete(int.Parse(a)))
            {
                lbThanhCong.Text = "Xóa dữ liệu thành công";
                getdata(int.Parse(name));
            }
           else
            {
                lbThatBai.Text = "Xóa dữ liệu thành công";
            }
        }
    }
}
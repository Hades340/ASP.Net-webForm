using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();
            }
        }
        public void getdata()
        {
            dgvSanPham.DataSource = new Dao_JustShop.sanphamModel().getsanpham();
            dgvSanPham.DataBind();
        }
        public string GetTenLoai(string ma)
        {
            int id = int.Parse(ma);
            string ten = new Dao_JustShop.LoaiSanPhamModel().gettenloai(id);
            return ten;
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int id = int.Parse( e.CommandArgument.ToString());
                new Dao_JustShop.sanphamModel().remove(id);
            }
            catch
            {
                lbLoi.Text = "Không xóa được sản phẩm";
            }
        }
    }
}
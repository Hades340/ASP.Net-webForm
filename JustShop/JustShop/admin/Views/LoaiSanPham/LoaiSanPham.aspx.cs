using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JustShop.admin.Views
{
    public partial class LoaiSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               getdata();
            }
           
            lbThatBai.Text = "";
        }
        public void getdata()
        {
            dgvLoaiSanPham.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            dgvLoaiSanPham.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int maloai = int.Parse(e.CommandArgument.ToString());
                new Dao_JustShop.LoaiSanPhamModel().remove(maloai);
                getdata();
            }
            catch
            {
                lbThatBai.Text = "Không xóa được loại sản phẩm này";
            }
          
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.phieunhaphang
{
    public partial class PhieuNhap : System.Web.UI.Page
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
            dgvNhapHang.DataSource = new Dao_JustShop.PhieuNhapHangModel().getphieunhap();
            dgvNhapHang.DataBind();
        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {

        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string maphieunhap = e.CommandArgument.ToString();
            try
            {
                new Dao_JustShop.PhieuNhapHangModel().delete(int.Parse(maphieunhap));
                getdata();
            }
            catch (Exception)
            {

                txtThatBai.Text="Xóa phiếu không thành công ";
            }
            
        }
    }
}
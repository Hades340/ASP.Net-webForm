using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.TinTuc
{
    public partial class TinTuc : System.Web.UI.Page
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
            dgvTinTuc.DataSource = new Dao_JustShop.tintucModel().gettintuc();
            dgvTinTuc.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            try {
                int id = int.Parse( e.CommandArgument.ToString());
                new Dao_JustShop.tintucModel().deleteTinTuc(id);
                getdata();
                lbThanhCong.Text = "Xóa tin thành công";
            }
            catch
            {
                lbThatBai.Text = "Xóa tin thất bại";
            }
        }
    }
}
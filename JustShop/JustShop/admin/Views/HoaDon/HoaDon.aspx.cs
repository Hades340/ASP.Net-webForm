using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.HoaDon
{
    public partial class HoaDon : System.Web.UI.Page
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
            dgvHoaDon.DataSource = new Dao_JustShop.donhangModel().getDonHang();
            dgvHoaDon.DataBind();
        }
    }
}
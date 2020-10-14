using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class index : System.Web.UI.Page
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
           dgvThongKe.DataSource = new Dao_JustShop.thongkeModel().getdata();
           dgvThongKe.DataBind();
        }

        protected void btnThongKe_Click(object sender, EventArgs e)
        {
            new Dao_JustShop.thongkeModel().proc();
            getdata();
        }
    }
}
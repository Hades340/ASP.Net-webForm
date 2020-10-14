using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.PhanHoi
{
    public partial class PhanHoi : System.Web.UI.Page
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
           dgvPhanHoi.DataSource = new Dao_JustShop.phanhoiModel().getdata();
            dgvPhanHoi.DataBind();
        }
    }
}
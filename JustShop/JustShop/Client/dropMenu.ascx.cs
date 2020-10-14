using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views
{
    public partial class dropMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdanhmuc();
            }
        }
        public void getdanhmuc()
        {

            rpMenu.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            rpMenu.DataBind();
        }
    }
}
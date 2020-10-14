using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client
{
    public partial class ucMenu : System.Web.UI.UserControl
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
           
            rpDanhMuc.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            rpDanhMuc.DataBind();
        }
    }
}
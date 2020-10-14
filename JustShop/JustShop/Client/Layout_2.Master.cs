using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client
{
    public partial class Layout_1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Dao_JustShop.GioHang> sanPhams = new List<Dao_JustShop.GioHang>();
            sanPhams =(List<Dao_JustShop.GioHang>) Session["giohang"];

        }
    }
}
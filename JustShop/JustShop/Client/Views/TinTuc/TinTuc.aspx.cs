using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.TinTuc
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
            rpTinTuc.DataSource = new Dao_JustShop.tintucModel().gettintuc();
            rpTinTuc.DataBind();
        }
    }
}
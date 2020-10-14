using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.loginss
{
    public partial class DanhSachUser : System.Web.UI.Page
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
            dgvUser.DataSource = new Dao_JustShop.login().checkfull();
            dgvUser.DataBind();
        }
    }
}
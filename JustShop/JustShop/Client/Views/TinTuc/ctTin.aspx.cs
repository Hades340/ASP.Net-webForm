using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.TinTuc
{
    public partial class ctTin : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MaTin"].ToString();
            if(!IsPostBack)
            {
                getdata(int.Parse(id));
                more(int.Parse(id));
            }
        }
        public void getdata(int ids)
        {
            rpCTtin.DataSource = new Dao_JustShop.tintucModel().mores(ids);
            rpCTtin.DataBind();
        }
        public void more(int idss)
        {        
            rpTinTuc.DataSource = new Dao_JustShop.tintucModel().more(idss);
            rpTinTuc.DataBind();
        }
    }
}
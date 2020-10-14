using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.CtHoaDon
{
    public partial class ShowAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }
        public void getdata2(int id)
        {
            dgvCThoadon.DataSource = new Dao_JustShop.CTdonhangModel().getdata(id);
            dgvCThoadon.DataBind();
        }
        public void getdata()
        {
            dgvCThoadon.DataSource = new Dao_JustShop.CTdonhangModel().getdata();
            dgvCThoadon.DataBind();
        }
        public string getTenkh(string id)
        {
            int ma = int.Parse(id);
            string kh = new Dao_JustShop.donhangModel().getTenkH(ma);
            return kh;
        }
        public string getTensp(string id)
        {
            int masp = int.Parse(id);
            string ten = new Dao_JustShop.sanphamModel().gettensp(masp);
            return ten;
        }
    }
}
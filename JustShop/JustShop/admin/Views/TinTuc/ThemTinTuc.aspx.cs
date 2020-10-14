using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.TinTuc
{
    public partial class ThemTinTuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lbErr1.Text = "";
                lbErr2.Text = "";
                lbThanhcong.Text = "";
                lbThatBai.Text = "";
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string tieude = txtTieuDe.Text;
            string noidung = txtNoiDung.Text;
            if(tieude=="")
            {
                lbErr1.Text = "Tiêu đề trống";
            }
            if(noidung == "")
            {
                lbErr2.Text = "Nội dung rỗng";
            }
            string name = "";
            if(image.HasFile)
            {
                string ext = Path.GetFileName(image.FileName);
                ext = ext.Split('.')[ext.Split('.').Length - 1];
                string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                image.SaveAs(Server.MapPath("~/Assest/img/") + filename);
                name = filename;
            }
            try
            {
                if(txtNoiDung.Text!="" && txtTieuDe.Text != "")
                {
                   if( new Dao_JustShop.tintucModel().addTinTuc(tieude, noidung, name))
                    {
                           lbThanhcong.Text = "Thêm Tin thành công";
                    }
                   
                }
            }
            catch (Exception)
            {

                lbThatBai.Text = "Thêm dữ liệu không thành công";
            }
        }
    }
}
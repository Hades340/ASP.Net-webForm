using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.TinTuc
{
    public partial class SuaTin : System.Web.UI.Page
    {
        string matin = "";
        string name = "";
        Dao_JustShop.tintucModel tintuc = new Dao_JustShop.tintucModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            matin = Request.QueryString["MaTin"].ToString();
            if(!IsPostBack)
            {
                getdata(int.Parse(matin));
            }
        }
        public void getdata(int id)
        {
           
            txtTieuDe.Text = tintuc.gettins(id).TieuDe.ToString();
            txtNoiDung.Text = tintuc.gettins(id).NoiDung.ToString();
            AnhTieuDe.ImageUrl = "~/Assest/img/" + tintuc.gettins(id).Anh.ToString(); 
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            string tieude = txtTieuDe.Text;
            string noidung = txtNoiDung.Text;
            int id = int.Parse(matin); 
            if(image.HasFile)
            {
                string ext = Path.GetFileName(image.FileName);
                ext = ext.Split('.')[ext.Split('.').Length - 1];
                string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                image.SaveAs(Server.MapPath("~/Assest/img/") + filename);
                name = filename;
            }
            else
            {
                name = tintuc.gettins(int.Parse(matin)).Anh.ToString();
            }
            if(tieude=="")
            {
                lbErr1.Text = "Tiêu đề trống";
            }
            if(noidung == "")
            {
                lbErr2.Text = "Nội dung trống";
            }
            if(noidung != "" && tieude !="")
            {
                if(tintuc.UpdateTinTuc(id,tieude,noidung,name))
                {
                    Response.Redirect("~/admin/Views/TinTuc/TinTuc.aspx");
                }
                else
                {
                    lbThatBai.Text = "Cập nhật thất bại";
                }
            }
        }
    }
}
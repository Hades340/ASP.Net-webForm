using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class ThemLoai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string tenloai = txtTenLoai.Text;
            string trichdan = txtTrichDan.Text;
            if(txtTenLoai.Text =="")
            {
                lbErr1.Text = "Tên loại không được để trống";
            }
            if(txtTrichDan.Text=="")
            {
                lbErr2.Text = "Trích dẫn không được để trống";
  
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
                if (new Dao_JustShop.LoaiSanPhamModel().insert(tenloai,trichdan,name))
                {
                    lbThanhcong.Text = "Thêm sản phẩm thành công";
                    Response.Redirect("~/admin/Views/LoaiSanPham/LoaiSanPham.aspx");
                }
            }
            catch (Exception)
            {

                lbThatBai.Text = "Thêm sản phẩm thất bại";
            }
        }
    }
}
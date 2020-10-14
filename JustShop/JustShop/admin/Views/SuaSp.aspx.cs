using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class SuaSp : System.Web.UI.Page
    {
        string maloai = "";
      Dao_JustShop.LoaiSanPhamModel loaisp =   new Dao_JustShop.LoaiSanPhamModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            maloai = Request.QueryString["MaLoai"].ToString();
            if(!IsPostBack)
            {
                getdata(int.Parse(maloai));
            }
        }
        protected void getdata(int id)
        {
             if( new Dao_JustShop.LoaiSanPhamModel().getloai(id) !=null)
            {
                txtTenLoai.Text = loaisp.getloai(id).TenLoai;
                txtTrichDan.Text = loaisp.getloai(id).TrichDan;
                anhcu.ImageUrl = "~/Assest/img/" + loaisp.getloai(id).AnhTieuBieu.ToString();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string name = "";
            string tenloai = txtTenLoai.Text;
            string noidung = txtTrichDan.Text;
            if(txtTenLoai.Text == "")
            {
                lbErr1.Text = "Tên loại trống";
            }
            if(txtTrichDan.Text =="")
            {
                lbErr2.Text = "Trích dẫn bị trống";
            }

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
                name = loaisp.getloai(int.Parse(maloai)).AnhTieuBieu;
            }
            if(txtTenLoai.Text != "" && txtTrichDan.Text !="")
            {
                if(loaisp.update(int.Parse(maloai),tenloai, noidung, name))
                {
                    Response.Redirect("~/admin/Views/LoaiSanPham/LoaiSanPham.aspx");
                }
                else
                {
                    lbThatBai.Text = "Không thể sửa sản phẩm";
                }
            }
        }
    }
}
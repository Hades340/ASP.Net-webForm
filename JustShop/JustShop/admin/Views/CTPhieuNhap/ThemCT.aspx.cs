using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.CTPhieuNhap
{
    public partial class ThemCT : System.Web.UI.Page
    {
        int name;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = int.Parse(Request.QueryString["MaCT"].ToString());
            if(!IsPostBack)
            {
                getLoaisanpham();               
            }
        }
        protected void getLoaisanpham()
        {
            drlLoaisp.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            drlLoaisp.DataValueField = "MaLoai";
            drlLoaisp.DataTextField = "TenLoai";
            drlLoaisp.DataBind();
        }
        protected void getsanpham()
        {
            drSanPham.DataSource = new Dao_JustShop.sanphamModel().getsanpham(int.Parse(drlLoaisp.SelectedValue));
            drSanPham.DataValueField = "MaSp";
            drSanPham.DataTextField = "Tensp";
            drSanPham.DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            int maloai = int.Parse(drlLoaisp.SelectedValue);
            int masp =int.Parse(drSanPham.SelectedValue);
            int soluong = int.Parse(txtSoLuong.Text);
            float gianhap =float.Parse(txtGiaNhap.Text);
            if(txtSoLuong.Text=="")
            {
                lbErr2.Text = "Số lượng nhập bị trống";
            }
            if(txtGiaNhap.Text=="")
            {
                lbErr3.Text = "Gía nhập bị trống";
            }
            if(soluong > 0 && gianhap >0)
            {
                try
                {
                    new Dao_JustShop.CTphieunhapModel().addCT(name, maloai, masp, soluong, gianhap);
                    lbThanhcong.Text = "Thêm tin thành công";
                }
                catch (Exception)
                {

                    lbThatBai.Text="Thêm tin thất bại";
                }
            }
        }

        protected void drSanPham_Load(object sender, EventArgs e)
        {
            getsanpham();
        }

        protected void drlLoaisp_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(drlLoaisp.SelectedValue.ToString());
            
        }
    }
}
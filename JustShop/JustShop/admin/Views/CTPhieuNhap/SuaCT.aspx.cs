using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.CTPhieuNhap
{
    public partial class SuaCT : System.Web.UI.Page
    {
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["MaCTphieuNhap"].ToString();
            if(!IsPostBack)
            {
                getdata();
                getMaloai();
                getMaSp();

            }
        }
        void getdata()
        {
            Dao_JustShop.CTphieunhapModel ctphieunhap = new Dao_JustShop.CTphieunhapModel();
            txtSoLuong.Text = ctphieunhap.search(int.Parse(name)).Soluong.ToString();
            txtGiaNhap.Text = ctphieunhap.search(int.Parse(name)).GiaNhap.ToString();
            drlLoaisp.SelectedValue = ctphieunhap.search(int.Parse(name)).MaLoai.ToString();
            drSanPham.SelectedValue = ctphieunhap.search(int.Parse(name)).MaSp.ToString();
        }
        void getMaloai()
        {
            drlLoaisp.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            drlLoaisp.DataTextField = "TenLoai";
            drlLoaisp.DataValueField = "MaLoai";
            drlLoaisp.DataBind();
        }
        void getMaSp()
        {
            drSanPham.DataSource = new Dao_JustShop.sanphamModel().getsanpham(int.Parse(drlLoaisp.SelectedValue));
            drSanPham.DataTextField = "Tensp";
            drSanPham.DataValueField = "MaSp";
            drSanPham.DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            int id = int.Parse(name);
            int maloai = int.Parse(drlLoaisp.SelectedValue);
            int maphieunhap = new Dao_JustShop.CTphieunhapModel().search(int.Parse(name)).MaPhieuNhap;
            int masp = int.Parse(drSanPham.SelectedValue);
            int soluong = int.Parse(txtSoLuong.Text);
            float giatien = float.Parse(txtGiaNhap.Text);
            if(txtGiaNhap.Text=="")
            {
                lbErr3.Text = "Giá nhập rỗng";
            }
            if(txtSoLuong.Text=="")
            {
                lbErr2.Text = "Số lượng rỗng";
            }
            if(txtSoLuong.Text!= "" && txtGiaNhap.Text!= "")
            {
                if(new Dao_JustShop.CTphieunhapModel().update(id,maphieunhap,maloai,masp,soluong,giatien))
                {
                    lbThanhcong.Text = "Sửa thành công";
                }
                else
                {
                    lbThatBai.Text = "Sửa thất bại";
                }
            }
        }

        protected void drlLoaisp_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(drlLoaisp.SelectedValue.ToString());
        }
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views.sanpham
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
         Dao_JustShop.sanphamModel sanphamModel = new Dao_JustShop.sanphamModel();
        string masp = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {    masp = Request.QueryString["MaSP"].ToString();
            if(!IsPostBack)
            {
               
                getloaisp();
                getdata(int.Parse(masp));
            }
           
        }
        public void getdata(int id)
        {
          
            if(new Dao_JustShop.sanphamModel().getsp(id) != null)
            {
                txtTensp.Text=  sanphamModel.getsp(id).Tensp;
                txtMoTa.Text = sanphamModel.getsp(id).MoTa;
                txtNoiDung.Text = sanphamModel.getsp(id).NoiDung;
                txtHanSuDung.Text = sanphamModel.getsp(id).HanSuDung.ToString();
                txtGiaTien.Text = (sanphamModel.getsp(id).GiaTien).ToString();
                drlLoaisp.SelectedValue = sanphamModel.getsp(id).MaLoai.ToString();
                txtHanSuDung.Text = sanphamModel.getsp(id).HanSuDung.ToString();
                anhsp.ImageUrl ="~/Assest/img/"+ sanphamModel.getsp(id).HinhAnh.ToString();
            }
          
            
        }
        public void getloaisp()
        {
            drlLoaisp.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            drlLoaisp.DataValueField = "MaLoai";
            drlLoaisp.DataTextField = "TenLoai";
            drlLoaisp.DataBind();
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            int id = int.Parse(masp);
            string ten = txtTensp.Text;
            string noidung = txtNoiDung.Text;
            string mota = txtMoTa.Text;
            string ngay = txtHanSuDung.Text;
            DateTime Ngay = DateTime.Parse(txtHanSuDung.Text);
            float giatien = float.Parse(txtGiaTien.Text);
            int loaisp = int.Parse(drlLoaisp.SelectedValue);
            string name = "";
            if (image.HasFile)
            {
                string ext = Path.GetFileName(image.FileName);
                ext = ext.Split('.')[ext.Split('.').Length - 1];
                string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                image.SaveAs(Server.MapPath("~/Assest/img/") + filename);
                name = filename;
            }
            else
            {
                name = sanphamModel.getsp(int.Parse(masp)).HinhAnh.ToString();
            }
            if (txtTensp.Text == "")
            {
                lbErr1.Text = "Tên sản phẩm chưa nhập";
            }
            if (txtMoTa.Text == "")
            {
                lbErr2.Text = "Bạn chưa nhập mô tả ";
            }
            if (txtNoiDung.Text == "")
            {
                lbErr3.Text = "Bạn chưa nhập nội dung";
            }
           
            if (txtGiaTien.Text == "")
            {
                lbErr5.Text = "Bạn chưa nhập giá tiền";
            }
            if(txtHanSuDung.Text == "")
            {
                Label2.Text = "Chưa nhập hạn sử dụng";
            }

            try
            {

                if (ten != "" && mota != ""  && giatien != 0 && noidung != "")
                {
                    if (sanphamModel.update(id, loaisp, ten,name,noidung,mota,giatien, Ngay))
                    {
                        lbThanhcong.Text = "Sửa dữ liệu thành công";
                        Response.Redirect("~/admin/Views/sanpham/SanPham.aspx");
                    }
                }
            }
            catch
            {
                lbThatBai.Text = "Sửa dữ liệu thất bại";
            }
        }
    }
}
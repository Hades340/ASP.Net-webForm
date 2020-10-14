using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class ThemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                 getmasp();
            }
           
        }
        public void getmasp()
        {
            drlLoaisp.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata();
            drlLoaisp.DataValueField = "MaLoai";
            drlLoaisp.DataTextField = "TenLoai";
            drlLoaisp.DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            int a =  int.Parse(drlLoaisp.SelectedValue);
            string ten = txtTensp.Text;
            string mota = txtMoTa.Text;
         

            DateTime han = DateTime.Parse(txtHanSuDung.Text);
            string noidung = txtNoiDung.Text;
            int soluong = int.Parse( txtSoLuong.Text);
            int giatien = int.Parse(txtGiaTien.Text);
            string name = "";
            if(image.HasFile)
            {
                string ext = Path.GetFileName(image.FileName);
                ext = ext.Split('.')[ext.Split('.').Length - 1];
                string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                image.SaveAs(Server.MapPath("~/Assest/img/") + filename);
                name = filename;
            }
            if(txtTensp.Text=="")
            {
                lbErr1.Text = "Tên sản phẩm chưa nhập";
            }
            if(txtMoTa.Text == "")
            {
                lbErr2.Text = "Bạn chưa nhập mô tả ";
            }
            if(txtNoiDung.Text == "")
            {
                lbErr3.Text = "Bạn chưa nhập nội dung";
            }
            if(txtSoLuong.Text=="")
            {
                lbErr4.Text = "Bạn chưa nhập số lượng";
            }
            if(txtGiaTien.Text == "")
            {
                lbErr5.Text = "Bạn chưa nhập giá tiền";
            }
            if(txtHanSuDung.Text == "")
            {
                Label2.Text = "Hạn sử dụng chưa được nhập";
            }
            try {
                lbErr1.Text = han.ToString();
                if(ten!= "" && mota!="" && soluong!=0 && giatien!=0 && noidung!="")
                {
                    
                    if(new Dao_JustShop.sanphamModel().AddSanPham(a,ten,name,noidung,mota,soluong,giatien,han))
                    {
                        lbThanhcong.Text = "Thêm dữ liệu thành công";
                    }
                }
            }
            catch
            {
                lbThatBai.Text = "Thêm dữ liệu thất bại";
            }
        }
    }
}
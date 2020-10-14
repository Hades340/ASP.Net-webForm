using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.GioHang
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();
            }
        }
        protected void getdata()
        {
            float tong = 0;
            List<Dao_JustShop.GioHang> gios;
            if (Session["giohang"] == null)
            {
                gios = new List<Dao_JustShop.GioHang>();
            }
            else
            {
                gios = (List<Dao_JustShop.GioHang>)Session["giohang"];
            }
            foreach (Dao_JustShop.GioHang item in gios)
            {
                tong += item.Tongtien;
            }
            lbTongTien.Text = tong.ToString();
            dgvGioHang.DataSource = Session["giohang"];
            dgvGioHang.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            List<Dao_JustShop.GioHang> gios;
            if (Session["giohang"] == null)
            {
                gios = new List<Dao_JustShop.GioHang>();
            }
            else
            {
                gios = (List<Dao_JustShop.GioHang>)Session["giohang"];
            }
            string id = e.CommandArgument.ToString();
            Dao_JustShop.GioHang a = new Dao_JustShop.GioHang();
            a = new Dao_JustShop.GioHang().GetGioHang(int.Parse(id), gios);
            gios.Remove(a);
            Session["giohang"] = gios;
            getdata();
        }

        protected void txtSoLuong_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {   int soluong = 0;
            List<Dao_JustShop.GioHang> gios;
            if (Session["giohang"] == null)
            {
                gios = new List<Dao_JustShop.GioHang>();
            }
            else
            {
                gios = (List<Dao_JustShop.GioHang>)Session["giohang"];
            }
            
            foreach (Dao_JustShop.GioHang item in gios)
            {
                soluong += item.Soluong;
            }
            float tongtien =  float.Parse(lbTongTien.Text);
            if (txtHoTen.Text=="")
            {
                lbTen.Text = "Bạn chưa nhập tên";
            }
            if(txtDiaChi.Text == "")
            {
                Label4.Text = "Bạn chưa nhập địa chỉ";
            }
            if(txtDienThoai.Text == "")
            {
                lbDienThaoi.Text = "Số điện thoại trống";
            }
            if(txtEmail.Text=="")
            {
                lbEmail.Text = "Email trống";
            }
            if(txtEmail.Text != "" && txtDiaChi.Text != "" && txtDienThoai.Text != "" && txtHoTen.Text != "")
            {
                string ten = txtHoTen.Text;
                string diachi = txtDiaChi.Text;
                string email = txtEmail.Text;
                int sdt = int.Parse(txtDienThoai.Text);
                try
                {
                    if(new Dao_JustShop.donhangModel().addDonHang(ten, sdt, diachi, soluong, tongtien))
                    {
                        int madonhang = new Dao_JustShop.donhangModel().getmadonhang();
                        foreach (Dao_JustShop.GioHang item in gios)
                        {
                            new Dao_JustShop.CTdonhangModel().addCTdonhang(madonhang, item.MaSp1, item.Soluong, item.Giatien, item.Tongtien);
                        }
                    }
                    lbThanhCong.Text = "Thanh toán thành công";

                }
                catch (Exception)
                {

                    lbThatBai.Text = "Giao dịch thất bại";
                }
                
            }
        }
    }
}
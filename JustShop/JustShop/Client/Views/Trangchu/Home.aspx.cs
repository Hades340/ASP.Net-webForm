using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.Trangchu
{
    public partial class Home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
              
                getdanhmuc();
                getsanpham();
              
            }
            //gios = new List<Dao_JustShop.GioHang>();
        }
        public void getdanhmuc()
        {
            rpLoaiSanPham.DataSource = new Dao_JustShop.LoaiSanPhamModel().getdata1();
            rpLoaiSanPham.DataBind();
        }
        public void getsanpham()
        {
            rpSanPham.DataSource = new Dao_JustShop.sanphamModel().sanPhamss();
            rpSanPham.DataBind();
        }

        protected void btnThemGio_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnThemGio_Command(object sender, CommandEventArgs e)
        {
            List<Dao_JustShop.GioHang> gios;
            if(Session["giohang"] == null)
            {
                gios = new List<Dao_JustShop.GioHang>();
            }
            else
            {
                gios = (List<Dao_JustShop.GioHang>)Session["giohang"];
            }
            string id =  e.CommandArgument.ToString();
            Dao_JustShop.GioHang a = new Dao_JustShop.GioHang();
            Dao_JustShop.SanPham sanPham = new Dao_JustShop.sanphamModel().getsp(int.Parse(id));
            a.MaSp1 = sanPham.MaSp;
            a.HinhAnh1 = sanPham.HinhAnh;
            a.Soluong = 1;
            a.Tensp = sanPham.Tensp;
            a.Giatien = (float)sanPham.GiaTien;
            a.Tongtien = a.Soluong * a.Giatien;
            int i = 0;
            if(gios.Count() == 0)
            {
                gios.Add(a);
            }
            else
            {
                 foreach (Dao_JustShop.GioHang item in gios)
                 {
                    if(item.MaSp1 == a.MaSp1)
                    {
                        item.Soluong += 1;
                        i++;
                    }
                 }
                 if(i==0)
                {
                    gios.Add(a);
                }
               
            }
            Session["giohang"] = gios;  
        }
    }
}
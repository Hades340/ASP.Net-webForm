using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.Client.Views.SanPham
{
    public partial class ctSanPham : System.Web.UI.Page
    {
        string masp = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            masp = Request.QueryString["MaSp"].ToString();
            if(!IsPostBack)
            {
                getdata(int.Parse(masp));
                getspLienQuan(int.Parse(masp));
            }
        }
        protected void getdata(int id)
        {
            rpCTSanPham.DataSource = new Dao_JustShop.sanphamModel().sanPhams(id);
            rpCTSanPham.DataBind();
        }
        protected void getspLienQuan(int id)
        {
            rpSPLienQuan.DataSource = new Dao_JustShop.sanphamModel().sanPhamsss(id);
            rpSPLienQuan.DataBind();
        }
        protected void btnThemGio_Click(object sender, EventArgs e)
        {

        }

        protected void btnThemGio_Command(object sender, CommandEventArgs e)
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
            int i = 0;
            string id = e.CommandArgument.ToString();
            Dao_JustShop.GioHang a = new Dao_JustShop.GioHang();
            Dao_JustShop.SanPham sanPham = new Dao_JustShop.sanphamModel().getsp(int.Parse(id));
            a.MaSp1 = sanPham.MaSp;
            a.HinhAnh1 = sanPham.HinhAnh;
            a.Soluong = 1;
            a.Tensp = sanPham.Tensp;
            a.Giatien = (float)sanPham.GiaTien;
            a.Tongtien = a.Soluong * a.Giatien;
            if (gios.Count() == 0)
            {
                gios.Add(a);
            }
            else
            {
                foreach (Dao_JustShop.GioHang item in gios)
                {
                    if (item.MaSp1 == a.MaSp1)
                    {
                        item.Soluong += 1;
                        item.Tongtien = item.Soluong * item.Giatien;
                        i++;
                    }

                }
                if (i == 0)
                {
                    gios.Add(a);
                }

            }
            Session["giohang"] = gios;
        }

        protected void txtSoLuong_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
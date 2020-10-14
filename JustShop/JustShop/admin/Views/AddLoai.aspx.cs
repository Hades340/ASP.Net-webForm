using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustShop.admin.Views
{
    public partial class AddLoai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string tenloai = txtTenLoai.Text;
            string trichdan = txtTrichDan.Text;
            if(txtTenLoai.Text == "")
            {
                lbloi1.Text = "Tên loại không được để trống";
            }
            if(txtTrichDan.Text == "")
            {
                lbLoi2.Text = "Phần trích dẫn không được để trống";
            }
            if(UploadFile.HasFile)
            {
                string ext = Path.GetFileName(UploadFile.FileName);
                ext = ext.Split('.')[ext.Split('.').Length - 1];
                string filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                UploadFile.SaveAs(Server.MapPath("~/Assest/img") + filename);
            }
            try {
                if (!new Dao_JustShop.LoaiSanPhamModel().insert(tenloai,trichdan,UploadFile.FileName))
                {
                    Label1.Text = "Thêm dữ liệu thất bạt";
                }
            }
            catch { }
        }
    }
}
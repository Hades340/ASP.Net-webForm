//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JustShop.Dao_JustShop
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.CTDonHangs = new HashSet<CTDonHang>();
            this.CTPhieunhaps = new HashSet<CTPhieunhap>();
        }
    
        public int MaSp { get; set; }
        public int MaLoai { get; set; }
        public string Tensp { get; set; }
        public string HinhAnh { get; set; }
        public string NoiDung { get; set; }
        public string MoTa { get; set; }
        public int SoLuong { get; set; }
        public Nullable<double> GiaTien { get; set; }
        public Nullable<System.DateTime> HanSuDung { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTDonHang> CTDonHangs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTPhieunhap> CTPhieunhaps { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }
    }
}

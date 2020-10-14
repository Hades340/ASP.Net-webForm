<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="XemCT.aspx.cs" Inherits="JustShop.admin.Views.CTPhieuNhap.XemCT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <h1 class="mt-4">Chi tiết nhập hàng</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Thông tin phiếu nhập hàng</li>
    </ol>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i> Bảng danh sách
        </div>
        <asp:Label runat="server" CssClass="text-danger" ID="txtThatBai"></asp:Label>
       <div class="card-body">
        <div class="table-responsive">
            <asp:Label runat="server" ID="lbThatBai"></asp:Label>
             <asp:Label runat="server" ID="lbThanhCong"></asp:Label>
            <asp:GridView runat="server" ID="dgvCTPhieuNhap" AutoGenerateColumns="false" PageSize="10" AllowPaging="false" CssClass="table table-striped">
                <Columns>
                     <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Loại  sản phẩm"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <asp:Label runat="server" Text='<%# gettenloai(Eval("MaLoai").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Tên sản phẩm"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                <asp:Label runat="server" Text='<%# getname(Eval("MaSp").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                    <asp:BoundField DataField="GiaNhap" HeaderText="Giá nhập" />
                      <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Chức năng"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                                 <div class="d-flex">
                                    <asp:LinkButton runat="server" ID="btnXoa"  CssClass="btn btn-danger mr-3" OnClientClick="return validation()" OnCommand="btnXoa_Command" CommandArgument='<%#Eval("MaCTPhieuNhap") %>'  Text="Xóa" />
                                    <asp:HyperLink runat="server" ID="LinkButton1"  CssClass="btn btn-dark" NavigateUrl='<%#"~/admin/Views/CTPhieuNhap/SuaCT.aspx?MaCTphieuNhap="+Eval("MaCTPhieuNhap").ToString() %>'  Text="Sửa"></asp:HyperLink>
                                </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
               
            </asp:GridView>
           
              
              </div>
             </div> 
          </div>
        
          </div>

        <div class="row"> 
            <div class="col-3">
                <asp:HyperLink runat="server" ID="Them" NavigateUrl="~/admin/Views/phieunhaphang/PhieuNhap.aspx" CssClass="btn btn-primary ml-3" Text="Phiếu nhập"></asp:HyperLink>
            </div>
            <div class="col-4"></div>
            <div class="col-5">
                 <asp:HyperLink runat="server" Text="Loại sản phẩm mới? Thêm loại sản phẩm" NavigateUrl="~/admin/Views/LoaiSanPham/ThemLoai.aspx"></asp:HyperLink> <br />
                <asp:HyperLink runat="server" Text="Sản phẩm mới? Thêm sản phẩm" NavigateUrl="~/admin/Views/sanpham/ThemSP.aspx"></asp:HyperLink>
            </div>
        </div> 
    <script>
        function validate() {
            return confirm("Bạn có chắc muốn xóa");
        }
    </script>
</asp:Content>

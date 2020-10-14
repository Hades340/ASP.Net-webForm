<%@ Page Title="" Language="C#" MasterPageFile="~/admin/LayOut1.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="JustShop.admin.Views.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <h1 class="mt-4">Sản phẩm</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item active">Danh sách sản phẩm hiện có</li>
    </ol>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i> Bảng danh sách
        </div>
         <asp:Label runat="server" ID="lbLoi" CssClass="text-danger"></asp:Label>
        <asp:GridView ID="dgvSanPham" runat="server" AutoGenerateColumns="false" PageSize="10" AllowPaging="true" CssClass="table table-striped">
            <Columns>
               
                <asp:BoundField DataField="Tensp" HeaderText="Tên sản phẩm" />
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server" Text="Ảnh sản phẩm"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image runat="server" ID="img" ImageUrl='<%#"~/Assest/img/"+Eval("HinhAnh").ToString() %>' style="width:100px"/>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server" Text="Tên loại"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#GetTenLoai(Eval("MaLoai").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:BoundField DataField="MoTa" HeaderText="Mô tả" />
                 <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" />
                 <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                 <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" />
                  <asp:BoundField DataField="HanSuDung" HeaderText="Giá tiền"/>
                <asp:TemplateField>
                <HeaderTemplate>
                    <asp:Label runat="server" Text="Chức năng "></asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="d-flex">
                    <asp:LinkButton runat="server" ID="btnXoa" CssClass="btn btn-danger mr-3"  Text="Xóa" OnCommand="btnXoa_Command" OnClientClick="return validate()" CommandArgument='<%# Eval("MaSp") %>'/>

                        <asp:HyperLink runat="server" ID="Sua" CssClass="btn btn-secondary" Text="Sửa" NavigateUrl='<%# "~/admin/Views/sanpham/SuaSanPham.aspx?MaSP="+ Eval("MaSp").ToString() %>'></asp:HyperLink>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>

            </Columns>
        </asp:GridView>
       
    </div>
 </div>
      <div class="row">
         <div class="col-9">
         </div>
         <div class="col-3">
         <asp:HyperLink runat="server" ID="Them" NavigateUrl="~/admin/Views/sanpham/ThemSP.aspx" CssClass="btn btn-primary ml-3" Text="Thêm sản phẩm"></asp:HyperLink>
      </div>
         </div> 
    <script>
        function validate() {
            return confirm("Bạn có muốn xóa không");
        }
    </script>
</asp:Content>
